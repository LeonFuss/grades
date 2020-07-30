import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';

import 'value_validators.dart';

class LessonDuration extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static int get lowerBound => 15;

  static int get upperBound => 60;

  LessonDuration._(this.value);

  factory LessonDuration(int duration) {
    return LessonDuration._(
        validateLessonDuration(duration, lowerBound, upperBound));
  }
}

class Room extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  Room._(this.value);

  factory Room(String room) {
    return Room._(validateRoom(room));
  }

  factory Room.uninitialized() {
    return Room._(left(ValueFailure.notInitialized(failedValue: '')));
  }
}

class Day extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static List<String> get validDays => ['Mo', 'Di', 'Mi', 'Do', 'Fr'];

  Day._(this.value);

  factory Day(String day) {
    return Day._(validateDay(day, validDays));
  }

  factory Day.uninitialized() {
    return Day._(left(ValueFailure.notInitialized(failedValue: '')));
  }
}

class Period extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  Period._(this.value);

  static int get maxPeriod => 15;

  factory Period(int period) {
    return Period._(validatePeriod(period, maxPeriod));
  }

  factory Period.uninitialized() {
    return Period._(left(ValueFailure.notInitialized(failedValue: -1)));
  }
}
