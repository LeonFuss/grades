import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:grades/domain/subjects/subject.dart' as s;
import 'package:grades/infrastructur/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import 'grades_dto.dart';

///Implementierung des [IGradeRepository]s.
@prod
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
  Future<Either<GradeFailures, Unit>> create(Grade grade) async {
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
          .setData(gradeDto.toJson());

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
  Future<Either<GradeFailures, Unit>> update(Grade grade) async {
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
  Future<Either<GradeFailures, Unit>> delete(Grade grade) async {
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
}
