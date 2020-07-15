import 'dart:async';

import 'package:async/async.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart' as s;
import 'package:grades/infrastructure/core/firestore_helpers.dart';
import 'package:grades/infrastructure/subjects/subjects_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import 'grades_dto.dart';

///Implementierung des [IGradeRepository]s.
@dev
@Injectable(as: IGradeRepository)
class GradeRepository implements IGradeRepository {
  final Firestore _firestore;

  GradeRepository(this._firestore);

  ///Gibt alle Noten eines Faches als Stream zurück, der bei sich Änderungen in der Datenbank aktualisiert .
  @override
  Stream<Either<GradeFailures, KtList<Grade>>> watchSubjectGrades(
      s.Subject subject) async* {
    final userDoc = await _firestore.userDocument();
    final subjectId = subject.id.getOrCrash();
    final term = subject.term.getOrCrash();

    yield* userDoc
        .term(term)
        .subjectCollection
        .document(subjectId)
        .gradesCollection
        .snapshots()
        .map(
          (snapshot) => right<GradeFailures, KtList<Grade>>(
            snapshot.documents
                .map((doc) => GradesDTO.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const GradeFailures.insufficientPermissions());
      } else {
        return left(const GradeFailures.unexpected());
      }
    });
  }

  ///Erstellt eine Note in der Datenbank
  @override
  Future<Either<GradeFailures, Unit>> createGrade(Grade grade) async {
    try {
      final userDoc = await _firestore.userDocument();
      final subjectId = grade.subjectId.getOrCrash();
      final term = grade.term.getOrCrash();

      final gradeDto = GradesDTO.fromDomain(grade);
      final json = gradeDto.toJson();

      await userDoc
          .term(term)
          .subjectCollection
          .document(subjectId)
          .gradesCollection
          .document(gradeDto.id)
          .setData(json);

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const GradeFailures.insufficientPermissions());
      } else {
        return left(const GradeFailures.unexpected());
      }
    }
  }

  ///Aktualisiert eine Note in der Datenbank.
  @override
  Future<Either<GradeFailures, Unit>> updateGrade(Grade grade) async {
    try {
      final userDoc = await _firestore.userDocument();
      final subjectId = grade.subjectId.getOrCrash();
      final term = grade.term.getOrCrash();

      final gradeDto = GradesDTO.fromDomain(grade);

      await userDoc
          .term(term)
          .subjectCollection
          .document(subjectId)
          .gradesCollection
          .document(gradeDto.id)
          .updateData(gradeDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const GradeFailures.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const GradeFailures.unableToUpdate());
      } else {
        return left(const GradeFailures.unexpected());
      }
    }
  }

  ///Löscht eine Note in der Datenbank.
  @override
  Future<Either<GradeFailures, Unit>> deleteGrade(Grade grade) async {
    try {
      final userDoc = await _firestore.userDocument();
      final subjectId = grade.subjectId.getOrCrash();
      final gradeId = grade.id.getOrCrash();
      final term = grade.term.getOrCrash();

      await userDoc
          .term(term)
          .subjectCollection
          .document(subjectId)
          .gradesCollection
          .document(gradeId)
          .delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const GradeFailures.insufficientPermissions());
      } else {
        return left(const GradeFailures.unexpected());
      }
    }
  }

  ///Gibt eine bestimmte Note als Stream zurück, der sich selbst aktualisiert.
  @override
  Stream<Either<GradeFailures, Grade>> watchGrade(Grade grade) async* {
    final userDoc = await _firestore.userDocument();
    final subjectId = grade.subjectId.getOrCrash();
    final gradeId = grade.id.getOrCrash();
    final term = grade.term.getOrCrash();

    yield* userDoc
        .term(term)
        .subjectCollection
        .document(subjectId)
        .gradesCollection
        .document(gradeId)
        .snapshots()
        .map(
          (snapshot) => right<GradeFailures, Grade>(
              GradesDTO.fromFirestore(snapshot).toDomain()),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const GradeFailures.insufficientPermissions());
      } else {
        return left(const GradeFailures.unexpected());
      }
    });
  }

  @override
  Future<Either<GradeFailures, KtList<Grade>>> getSubjectGrades(
      s.Subject subject) async {
    final term = subject.term;
    return term.value.fold((l) => left(const GradeFailures.termNotValid()),
        (term) async {
      try {
        final userDoc = await _firestore.userDocument();
        final subjectId = subject.id.getOrCrash();

        final snapshot = await userDoc
            .term(term)
            .subjectCollection
            .document(subjectId)
            .gradesCollection
            .getDocuments();

        final data = snapshot.documents;

        return right(data
            .map((snapshot) => GradesDTO.fromFirestore(snapshot).toDomain())
            .toImmutableList());
      } on PlatformException catch (e) {
        if (e.message.contains('PERMISSION_DENIED')) {
          return left(const GradeFailures.insufficientPermissions());
        } else if (e.message.contains('NOT_FOUND')) {
          return left(const GradeFailures.unableToUpdate());
        } else {
          return left(const GradeFailures.unexpected());
        }
      }
    });
  }

  @override
  Stream<Either<GradeFailures, KtList<Grade>>> watchAllGrades(
      Term term) async* {
    final userDoc = await _firestore.userDocument();
    final subjects = await getAllSubjects(term);
    yield* subjects.fold((l) => Stream.fromFuture(Future.value(left(l))), (r) {
      final grades = r.asList().map((e) {
        final subjectId = e.id.getOrCrash();
        final term = e.term.getOrCrash();

        return userDoc
            .term(term)
            .subjectCollection
            .document(subjectId)
            .gradesCollection
            .snapshots()
            .map((snapshot) {
          return right<GradeFailures, KtList<Grade>>(
            snapshot.documents
                .map((doc) => GradesDTO.fromFirestore(doc).toDomain())
                .toImmutableList(),
          );
        }).onErrorReturnWith((e) {
          if (e is PlatformException &&
              e.message.contains('PERMISSION_DENIED')) {
            return left(const GradeFailures.insufficientPermissions());
          } else {
            return left(const GradeFailures.unexpected());
          }
        });
      }).toList();

      if (grades.isEmpty) {
        return Stream.fromFuture(Future.value(right(KtList.empty())));
      }
      final streamZip = StreamZip<Either<GradeFailures, KtList<Grade>>>(grades);

      return streamZip.transform(
        StreamTransformer.fromHandlers(
          handleData: (data, sink) {
            var failure = false;
            // ignore: avoid_function_literals_in_foreach_calls
            data.forEach((element) {
              element.fold((l) => failure = true, (r) {});
            });
            if (failure) {
              sink.add(left(const GradeFailures.unexpected()));
            } else {
              final gradesLists = data
                  .map(
                    (e) => e.fold(
                      (l) {},
                      (r) => r.asList(),
                    ),
                  )
                  .toList();
              final grades = gradesLists.fold([], (previousValue, element) {
                final list = previousValue;
                list.addAll(element);
                return list;
              });

              sink.add(right(grades.toImmutableList()));
            }
          },
        ),
      );
    });
  }

  Future<Either<GradeFailures, KtList<s.Subject>>> getAllSubjects(
      Term term) async {
    return term.value.fold((l) => left(const GradeFailures.unexpected()),
        (term) async {
      try {
        final userDoc = await _firestore.userDocument();

        final snapshot =
            await userDoc.term(term).subjectCollection.getDocuments();

        final data = snapshot.documents;

        return right(data
            .map((snapshot) => SubjectsDTO.fromFirestore(snapshot).toDomain())
            .toImmutableList());
      } on PlatformException catch (e) {
        if (e.message.contains('PERMISSION_DENIED')) {
          return left(const GradeFailures.insufficientPermissions());
        } else if (e.message.contains('NOT_FOUND')) {
          return left(const GradeFailures.unableToUpdate());
        } else {
          return left(const GradeFailures.unexpected());
        }
      }
    });
  }

  @override
  Future<Either<GradeFailures, Unit>> deleteAllSubjectGrades(
      s.Subject subject) {
    throw UnimplementedError();
  }
}
