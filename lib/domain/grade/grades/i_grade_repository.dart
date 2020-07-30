import 'package:dartz/dartz.dart';
import 'grade.dart';
import 'grade_failures.dart';
import 'value_objects.dart';
import '../subjects/subject.dart';
import 'package:kt_dart/collection.dart';

///Interface zur Kommunikation mit der Datenbank
abstract class IGradeRepository {
  Stream<Either<GradeFailures, KtList<Grade>>> watchSubjectGrades(
      Subject subject);

  Future<Either<GradeFailures, KtList<Grade>>> getSubjectGrades(
      Subject subject);

  Stream<Either<GradeFailures, Grade>> watchGrade(Grade grade);

  Future<Either<GradeFailures, Unit>> createGrade(Grade grade);

  Future<Either<GradeFailures, Unit>> updateGrade(Grade grade);

  Future<Either<GradeFailures, Unit>> deleteGrade(Grade grade);

  Future<Either<GradeFailures, Unit>> deleteAllSubjectGrades(Subject subject);

  Stream<Either<GradeFailures, KtList<Grade>>> watchAllGrades(Term term);
}
