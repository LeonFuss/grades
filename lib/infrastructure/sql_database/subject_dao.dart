import 'package:dartz/dartz.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/domain/subjects/subject.dart' as s;
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:grades/infrastructure/sql_database/app_database.dart';
import 'package:grades/infrastructure/sql_database/tables.dart';
import 'package:grades/infrastructure/subjects/subjects_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';

part 'subject_dao.g.dart';

@prod
@Injectable(as: ISubjectRepository)
@UseDao(tables: [Subjects])
class SubjectDAO extends DatabaseAccessor<AppDatabase>
    with _$SubjectDAOMixin
    implements ISubjectRepository {
  SubjectDAO(AppDatabase attachedDatabase) : super(attachedDatabase);

  @override
  Future<Either<SubjectFailures, Unit>> changeSubjectPosition(
      s.Subject a, s.Subject b) async {
    try {
      final newA = a.copyWith(position: b.position);
      final newB = b.copyWith(position: a.position);
      await updateSubject(newA);
      await updateSubject(newB);
      return right<SubjectFailures, Unit>(unit);
    } catch (e) {
      return left<SubjectFailures, Unit>(SubjectFailures.unexpected());
    }
  }

  @override
  Future<Either<SubjectFailures, Unit>> createSubject(s.Subject subject) async {
    try {
      await into(subjects).insert(SubjectsDTO.fromDomain(subject).toDBO());
      return right<SubjectFailures, Unit>(unit);
    } catch (e) {
      return left<SubjectFailures, Unit>(SubjectFailures.unexpected());
    }
  }

  @override
  Future<Either<SubjectFailures, Unit>> updateSubject(s.Subject subject) async {
    try {
      await update(subjects).replace(SubjectsDTO.fromDomain(subject).toDBO());
      return right<SubjectFailures, Unit>(unit);
    } catch (e) {
      return left<SubjectFailures, Unit>(SubjectFailures.unexpected());
    }
  }

  @override
  Future<Either<SubjectFailures, Unit>> deleteSubject(s.Subject subject) async {
    try {
      await delete(subjects).delete(SubjectsDTO.fromDomain(subject).toDBO());
      return right<SubjectFailures, Unit>(unit);
    } catch (e) {
      return left<SubjectFailures, Unit>(SubjectFailures.unexpected());
    }
  }

  @override
  Future<Either<SubjectFailures, KtList<s.Subject>>> getAllSubjects(
      Term term) async {
    try {
      final termValue = term.getOrCrash();
      final query = await (select(subjects)
            ..where((tbl) => tbl.term.equals(termValue)))
          .get();
      return right<SubjectFailures, KtList<s.Subject>>(query
          .map((dbo) => SubjectsDTO.fromDBO(dbo).toDomain())
          .toImmutableList());
    } catch (e) {
      return left<SubjectFailures, KtList<s.Subject>>(
          SubjectFailures.unexpected());
    }
  }

  @override
  Stream<Either<SubjectFailures, KtList<s.Subject>>> watchAllSubjects(
      Term term) async* {
    try {
      final termValue = term.getOrCrash();
      final query = await (select(subjects)
            ..where((tbl) => tbl.term.equals(termValue)))
          .watch();
      yield* query
          .map((dboList) => right<SubjectFailures, KtList<s.Subject>>(dboList
              .map((dbo) => SubjectsDTO.fromDBO(dbo).toDomain())
              .toImmutableList()))
          .onErrorReturnWith((error) => left(SubjectFailures.unexpected()));
    } catch (e) {
      yield left<SubjectFailures, KtList<s.Subject>>(
          SubjectFailures.unexpected());
    }
  }

  @override
  Stream<Either<SubjectFailures, s.Subject>> watchSubject(
      s.Subject subject) async* {
    try {
      final query = await (select(subjects)
            ..whereSamePrimaryKey(SubjectsDTO.fromDomain(subject).toDBO()))
          .watchSingle();
      yield* query
          .map((dbo) => right<SubjectFailures, s.Subject>(
              SubjectsDTO.fromDBO(dbo).toDomain()))
          .onErrorReturnWith((error) => left(SubjectFailures.unexpected()));
    } catch (e) {
      yield left<SubjectFailures, s.Subject>(SubjectFailures.unexpected());
    }
  }
}
