import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';

import 'value_validators.dart';

class GradeSystem extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  GradeSystem._(this.value);

  factory GradeSystem.oneToSix() {
    return GradeSystem('oneToSix');
  }

  factory GradeSystem.zeroToFifteen() {
    return GradeSystem('zeroToFifteen');
  }

  factory GradeSystem(String systemType) {
    return GradeSystem._(validateGradeSystem(systemType));
  }
}
