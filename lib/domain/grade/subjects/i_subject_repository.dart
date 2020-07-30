import 'package:dartz/dartz.dart';
import 'package:grades/domain/grade/grades/value_objects.dart';
import 'subject.dart';
import 'subject_failures.dart';
import 'package:kt_dart/collection.dart';

///Interface zur Kommunikation mit der Datenbank
abstract class ISubjectRepository {
  Stream<Either<SubjectFailures, Subject>> watchSubject(Subject subject);

  Future<Either<SubjectFailures, KtList<Subject>>> getAllSubjects(Term term);

  Stream<Either<SubjectFailures, KtList<Subject>>> watchAllSubjects(Term term);

  Future<Either<SubjectFailures, Unit>> createSubject(Subject subject);

  Future<Either<SubjectFailures, Unit>> updateSubject(Subject subject);

  Future<Either<SubjectFailures, Unit>> deleteSubject(Subject subject);

  Future<Either<SubjectFailures, Unit>> changeSubjectPosition(
      Subject a, Subject b);
}
