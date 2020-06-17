import 'package:dartz/dartz.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:kt_dart/collection.dart';

abstract class ISubjectRepository {
  Stream<Either<SubjectFailures, Subject>> watchSubject(Subject subject);

  Future<Either<SubjectFailures, KtList<Subject>>> getAll(Term term);

  Stream<Either<SubjectFailures, KtList<Subject>>> watchAll(Term term);

  Future<Either<SubjectFailures, Unit>> create(Subject subject);

  Future<Either<SubjectFailures, Unit>> update(Subject subject);

  Future<Either<SubjectFailures, Unit>> delete(Subject subject);

  Future<Either<SubjectFailures, Unit>> changePosition(Subject a, Subject b);
}
