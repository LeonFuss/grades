import 'dart:io';

import 'package:grades/infrastructure/core/db_path.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart' as p;

import 'grade_dao.dart';
import 'subject_dao.dart';
import 'tables.dart';

part 'app_database.g.dart';

@Singleton()
@UseMoor(tables: [Grades, Subjects], daos: [GradeDAO, SubjectDAO])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final path = await getDirectoryPath();
    final file = File(p.join(path, 'db.sqlite'));
    return VmDatabase(file);
  });
}
