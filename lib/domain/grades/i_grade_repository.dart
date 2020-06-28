import 'package:dartz/dartz.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:kt_dart/collection.dart';

///Interface zur Kommunikation mit der Datenbank
abstract class IGradeRepository {
  Stream<Either<GradeFailures, KtList<Grade>>> watchSubjectGrades(
      Subject subject);

  Future<Either<GradeFailures, KtList<Grade>>> getSubjectGrade(Subject subject);

  Stream<Either<GradeFailures, Grade>> watchGrade(Grade grade);

  Future<Either<GradeFailures, Unit>> create(Grade grade);

  Future<Either<GradeFailures, Unit>> update(Grade grade);

  Future<Either<GradeFailures, Unit>> delete(Grade grade);
}
