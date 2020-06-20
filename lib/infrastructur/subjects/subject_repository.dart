import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart' as s;
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:grades/infrastructur/core/firestore_helpers.dart';
import 'package:grades/infrastructur/subjects/subjects_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/subjects/i_subject_repository.dart';

@prod
@Injectable(as: ISubjectRepository)
class SubjectRepository implements ISubjectRepository {
  final Firestore _firestore;

  SubjectRepository(this._firestore);

  ///Gibt Fächer als Stream zurück, der bei sich Änderungen in der Datenbank aktualisiert .
  @override
  Stream<Either<SubjectFailures, KtList<s.Subject>>> watchAll(
      Term term) async* {
    final userDoc = await _firestore.userDocument();

    yield* term.value.fold((l) {
      final Either<SubjectFailures, KtList<s.Subject>> value =
          left(const SubjectFailures.unexpected());
      return Stream.fromFuture(Future.value(value));
    }, (int term) {
      return userDoc
          .term(term)
          .subjectCollection
          .orderBy('position', descending: false)
          .snapshots()
          .map(
            (snapshot) => right<SubjectFailures, KtList<s.Subject>>(
              snapshot.documents
                  .map((doc) => SubjectsDTO.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
          return left(const SubjectFailures.insufficientPermissions());
        } else {
          return left(const SubjectFailures.unexpected());
        }
      });
    });
  }

  ///Gibt Fächer als Future zurück
  ///(Im Gegensatz zum Stream ist dieser einmalig und aktualisiert sich nicht bei Änderungen).
  @override
  Future<Either<SubjectFailures, KtList<s.Subject>>> getAll(Term term) async {
    return term.value.fold((l) => left(const SubjectFailures.unexpected()),
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
          return left(const SubjectFailures.insufficientPermissions());
        } else if (e.message.contains('NOT_FOUND')) {
          return left(const SubjectFailures.unableToUpdate());
        } else {
          return left(const SubjectFailures.unexpected());
        }
      }
    });
  }

  ///Erstellt ein Fach in der Datenbank.
  @override
  Future<Either<SubjectFailures, Unit>> create(s.Subject subject) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = SubjectsDTO.fromDomain(subject);
      final term = subject.term.getOrCrash();

      final subjectDocuments =
          await userDoc.term(term).subjectCollection.getDocuments();
      final subjectCount = subjectDocuments.documents.length;

      await userDoc
          .term(term)
          .subjectCollection
          .document(noteDto.id)
          .setData(noteDto.copyWith(position: subjectCount).toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const SubjectFailures.insufficientPermissions());
      } else {
        return left(const SubjectFailures.unexpected());
      }
    }
  }

  ///Aktualisiert ein Fach in der Datenbank.
  @override
  Future<Either<SubjectFailures, Unit>> update(s.Subject subject) async {
    try {
      final userDoc = await _firestore.userDocument();
      final subjectDto = SubjectsDTO.fromDomain(subject);
      final term = subject.term.getOrCrash();

      await userDoc
          .term(term)
          .subjectCollection
          .document(subjectDto.id)
          .updateData(subjectDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const SubjectFailures.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const SubjectFailures.unableToUpdate());
      } else {
        return left(const SubjectFailures.unexpected());
      }
    }
  }

  ///Löscht ein Fach in der Datenbank.
  @override
  Future<Either<SubjectFailures, Unit>> delete(s.Subject subject) async {
    try {
      final userDoc = await _firestore.userDocument();
      final subjectId = subject.id.getOrCrash();
      final term = subject.term.getOrCrash();
      final position = subject.position;

      final Either<SubjectFailures, KtList<s.Subject>> allSubjectsEither =
          await getAll(subject.term);

      return allSubjectsEither.fold(
          (l) => left(const SubjectFailures.unexpected()), (subjects) async {
        final sortedList =
            subjects.sortedBy((s.Subject subject) => subject.position);
        final itemsToChange = sortedList.asList().sublist(position);

        //veringert die Position der Fächer in der liste in höher Position um eins
        for (final item in itemsToChange) {
          update(item.copyWith(position: item.position - 1));
        }
        await userDoc.term(term).subjectCollection.document(subjectId).delete();
        return right(unit);
      });
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const SubjectFailures.insufficientPermissions());
      } else {
        return left(const SubjectFailures.unexpected());
      }
    }
  }

  ///Gibt ein einzelnens Fach als Stream, der sich ständig aktualisiert.
  @override
  Stream<Either<SubjectFailures, s.Subject>> watchSubject(
      s.Subject subject) async* {
    final userDoc = await _firestore.userDocument();
    final subjectId = subject.id.getOrCrash();
    final term = subject.term.getOrCrash();

    yield* userDoc
        .term(term)
        .subjectCollection
        .document(subjectId)
        .snapshots()
        .map(
          (snapshot) => right<SubjectFailures, s.Subject>(
              SubjectsDTO.fromFirestore(snapshot).toDomain()),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const SubjectFailures.insufficientPermissions());
      } else {
        return left(const SubjectFailures.unexpected());
      }
    });
  }

  ///Tauscht den Positions Wert zweier Fächer und
  ///somit die Reihenfolge in der die Fächer dem Benutzer angezeigt werden.
  @override
  Future<Either<SubjectFailures, Unit>> changePosition(
      s.Subject a, s.Subject b) async {
    final firstSubject = a.copyWith(position: b.position);
    final secondSubject = b.copyWith(position: a.position);

    try {
      await update(firstSubject);
      await update(secondSubject);
      return right(unit);
    } catch (e) {
      return left(const SubjectFailures.unexpected());
    }
  }
}
