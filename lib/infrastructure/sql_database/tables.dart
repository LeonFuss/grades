import 'package:moor/moor.dart';

@DataClassName('GradeDBO')
class Grades extends Table {
  TextColumn get id => text()();

  DateTimeColumn get creationTime => dateTime()();

  IntColumn get value => integer()();

  TextColumn get type => text()();

  TextColumn get description => text()();

  TextColumn get subjectId => text()();

  IntColumn get term => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  String get tableName => 'grades';
}

@DataClassName('SubjectDBO')
class Subjects extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  RealColumn get average => real()();

  RealColumn get oralAverage => real()();

  RealColumn get writtenAverage => real()();

  IntColumn get position => integer()();

  IntColumn get term => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  String get tableName => 'subjects';
}
