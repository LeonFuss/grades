import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';

import 'value_validators.dart';

class BreakPositions extends ValueObject<List<int>>{
  factory BreakPositions(List<int> breakPositions){
    return BreakPositions._(validateBreakPositions(breakPositions,
     Period.maxPeriod,));
  }

  BreakPositions._(this.value);

  @override 
  final Either<ValueFailure<List<int>>,List<int>> value;
}

class LessonDuration extends ValueObject<int> {
  factory LessonDuration(int duration) {
    return LessonDuration._(
        validateLessonDuration(duration, lowerBound, upperBound));
  }

  LessonDuration._(this.value);

  @override
  final Either<ValueFailure<int>, int> value;

  static int get lowerBound => 15;

  static int get upperBound => 60;
}
class BreakDurations extends ValueObject<List<int>> {
  factory BreakDurations(List<int> duration) {
    return BreakDurations._(
        validateDuration(duration, lowerBound, upperBound));
  }

  BreakDurations._(this.value);

  @override
  final Either<ValueFailure<List<int>>,List<int>> value;

  static int get lowerBound => 5;

  static int get upperBound => 30;
}

class Room extends ValueObject<String> {
  factory Room(String room) {
    return Room._(validateRoom(room));
  }

  Room._(this.value);

  factory Room.uninitialized() {
    return Room._(left(ValueFailure.notInitialized(failedValue: '')));
  }

  @override
  final Either<ValueFailure<String>, String> value;
}

class Day extends ValueObject<String> {
  factory Day(String day) {
    return Day._(validateDay(day, validDays));
  }

  Day._(this.value);

  factory Day.uninitialized() {
    return Day._(left(ValueFailure.notInitialized(failedValue: '')));
  }

  @override
  final Either<ValueFailure<String>, String> value;

  static List<String> get validDays => ['Mo', 'Di', 'Mi', 'Do', 'Fr'];
}

class Period extends ValueObject<int> {
  factory Period(int period) {
    return Period._(validatePeriod(period, maxPeriod));
  }

  Period._(this.value);

  factory Period.uninitialized() {
    return Period._(left(ValueFailure.notInitialized(failedValue: -1)));
  }

  @override
  final Either<ValueFailure<int>, int> value;

  static int get maxPeriod => 15;
}
