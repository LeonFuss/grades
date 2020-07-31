import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateRoom(String input) {
  assert(input != null,'input cannot be null');

  if(input.isNotEmpty ){
  return right(input);
  }else{
    return left(ValueFailure.invalidStringInput(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateDay(
    String input, List<String> validDays) {
  assert(input != null, 'input cannot be null');
  assert(!validDays.contains((element)=> element == null), 'validDays contains a null reference');

  if (validDays.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDay(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validatePeriod(int input, int maxPeriod) {
  assert(input != null, 'input cannot be null');
  assert(maxPeriod != null, 'maxPeriod cannot be null');

  if (0 < input && input <= maxPeriod) {
    return right(input);
  } else {
    return left(ValueFailure.periodOutOfBounds(failedValue: input));
  }
}

Either<ValueFailure<List<int>>, List<int>> validateDuration(
    List<int> durations, int lowerBound, int upperBound) {
  assert(durations !=null,'duration cannot be null');
  assert(!durations.contains((element)=> element == null), 'durations contains a null reference');
  assert(lowerBound != null, 'lowerBound cannot be null');
  assert(upperBound != null, 'upperBound cannot be null');

  if (!durations.contains((duration)=> lowerBound > duration || duration > upperBound)) {
    return right(durations);
  } else {
    return left(ValueFailure.lessonDurationOutOfBounds(failedValue: durations));
  }
}

Either<ValueFailure<int>,int> validateLessonDuration(int duration, int lowerBound, int upperBound){
  assert(duration !=null,'duration cannot be null');
  assert(lowerBound != null, 'lowerBound cannot be null');
  assert(upperBound != null, 'upperBound cannot be null');

  if(lowerBound < duration && duration <= upperBound){
    return right(duration);
  }else{
    return left(ValueFailure.lessonDurationOutOfBounds(failedValue: duration));
  }
}

Either<ValueFailure<List<int>>, List<int>> validateBreakPositions(List<int> breakPositions, int maxPeriod){
 assert(breakPositions != null, 'breakPositions cannot be null');
 assert(!breakPositions.contains((element) => element == null), 'breakPositions contains a null reference');

 assert(maxPeriod != null, 'maxPeriod cannot be null');
 assert(maxPeriod > 0, 'maxPerid cannot be less or equal 0');

 if(!breakPositions.contains((element)=> element >= maxPeriod)){
    return right(breakPositions);
 }else{
   return left(ValueFailure.invalidBreakPosition(failedValue: breakPositions));
 }
}
