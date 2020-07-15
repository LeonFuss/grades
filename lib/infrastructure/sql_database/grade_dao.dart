import 'package:dartz/dartz.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart' as s;
import 'package:grades/infrastructure/grades/grades_dto.dart';
import 'package:grades/infrastructure/sql_database/app_database.dart';
import 'package:grades/infrastructure/sql_database/tables.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';

import 'app_database.dart';

part 'grade_dao.g.dart';

@prod
@Injectable(as: IGradeRepository)
@UseDao(tables: [Grades])
class GradeDAO extends DatabaseAccessor<AppDatabase>
    with _$GradeDAOMixin
    implements IGradeRepository {
  GradeDAO(AppDatabase attachedDatabase) : super(attachedDatabase);

  @override
  Future<Either<GradeFailures, Unit>> createGrade(Grade grade) async {
    try {
      await into(grades).insert(GradesDTO.fromDomain(grade).toDBO());
      return right<GradeFailures, Unit>(unit);
    } catch (e) {
      return left<GradeFailures, Unit>(GradeFailures.unexpected());
    }
  }

  @override
  Future<Either<GradeFailures, Unit>> deleteGrade(Grade grade) async {
    try {
      await delete(grades).delete(GradesDTO.fromDomain(grade).toDBO());
      return right<GradeFailures, Unit>(unit);
    } catch (e) {
      return left<GradeFailures, Unit>(GradeFailures.unexpected());
    }
  }

  @override
  Future<Either<GradeFailures, Unit>> deleteAllSubjectGrades(
      s.Subject subject) async {
    try {
      final subjectId = subject.id.getOrCrash();
      await (delete(grades)..where((tbl) => tbl.subjectId.equals(subjectId)))
          .go();
      return right<GradeFailures, Unit>(unit);
    } catch (e) {
      return left<GradeFailures, Unit>(GradeFailures.unexpected());
    }
  }

  @override
  Future<Either<GradeFailures, Unit>> updateGrade(Grade grade) async {
    try {
      await update(grades).replace(GradesDTO.fromDomain(grade).toDBO());
      return right<GradeFailures, Unit>(unit);
    } catch (e) {
      return left<GradeFailures, Unit>(GradeFailures.unexpected());
    }
  }

  @override
  Future<Either<GradeFailures, KtList<Grade>>> getSubjectGrades(
      s.Subject subject) async {
    try {
      final subjectId = subject.id.getOrCrash();
      final query = await (select(grades)
            ..where((tbl) => tbl.subjectId.equals(subjectId)))
          .get();
      return right<GradeFailures, KtList<Grade>>(query
          .map((dbo) => GradesDTO.fromDBO(dbo).toDomain())
          .toImmutableList());
    } catch (_) {
      return left<GradeFailures, KtList<Grade>>(GradeFailures.unexpected());
    }
  }

  @override
  Stream<Either<GradeFailures, Grade>> watchGrade(Grade grade) async* {
    try {
      final query = (select(grades)
            ..whereSamePrimaryKey(GradesDTO.fromDomain(grade).toDBO()))
          .watchSingle();
      yield* query
          .map((dbo) =>
              right<GradeFailures, Grade>(GradesDTO.fromDBO(dbo).toDomain()))
          .onErrorReturnWith((error) => left(GradeFailures.unexpected()));
    } catch (_) {
      yield left<GradeFailures, Grade>(GradeFailures.unexpected());
    }
  }

  @override
  Stream<Either<GradeFailures, KtList<Grade>>> watchSubjectGrades(
      s.Subject subject) async* {
    try {
      final subjectId = subject.id.getOrCrash();

      final query = (select(grades)
            ..where((tbl) => tbl.subjectId.equals(subjectId)))
          .watch();
      yield* query
          .map((dboList) => right<GradeFailures, KtList<Grade>>(dboList
              .map((dbo) => GradesDTO.fromDBO(dbo).toDomain())
              .toImmutableList()))
          .onErrorReturnWith((error) => left(GradeFailures.unexpected()));
    } catch (_) {
      yield left<GradeFailures, KtList<Grade>>(GradeFailures.unexpected());
    }
  }

  @override
  Stream<Either<GradeFailures, KtList<Grade>>> watchAllGrades(
      Term term) async* {
    try {
      final termValue = term.getOrCrash();

      final query =
          (select(grades)..where((tbl) => tbl.term.equals(termValue))).watch();
      yield* query
          .map((dboList) => right<GradeFailures, KtList<Grade>>(dboList
              .map((dbo) => GradesDTO.fromDBO(dbo).toDomain())
              .toImmutableList()))
          .onErrorReturnWith((error) => left(GradeFailures.unexpected()));
    } catch (_) {
      yield left<GradeFailures, KtList<Grade>>(GradeFailures.unexpected());
    }
  }
}
