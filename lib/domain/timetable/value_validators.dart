import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateRoom(String input) {
  return right(input);
}

Either<ValueFailure<String>, String> validateDay(
    String input, List<String> validDays) {
  if (validDays.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDay(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validatePeriod(int input, int maxPeriod) {
  if (0 < input && input <= maxPeriod) {
    return right(input);
  } else {
    return left(ValueFailure.periodOutOfBounds(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateLessonDuration(
    int duration, int lowerBound, int upperBound) {
  if (lowerBound < duration && duration <= upperBound) {
    return right(duration);
  } else {
    return left(ValueFailure.lessonDurationOutOfBounds(failedValue: duration));
  }
}
