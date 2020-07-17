import 'dart:async';
import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:grades/domain/initial_startup/failures.dart';
import 'package:grades/infrastructure/core/db_path.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@singleton
class InitialStartup {
  InitialStartup() {
    _initialize();
  }

  Future<void> _initialize() async {
    final path = await getDirectoryPath();
    Hive.init(path);
  }

  Future<Either<StartUpFailures, bool>> isFirstStartup() async {
    try {
      final box = await Hive.openBox<bool>('startup');
      return right(box.get('isFirstStartup', defaultValue: true));
    } catch (e) {
      return left(StartUpFailures.unexpected());
    }
  }

  Future<Either<StartUpFailures, Unit>> startUpPassed() async {
    try {
      final box = await Hive.openBox<bool>('startup');
      await box.put('isFirstStartup', false);
      return right(unit);
    } catch (e) {
      return left(StartUpFailures.unexpected());
    }
  }
}
