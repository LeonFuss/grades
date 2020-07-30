import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/failures.dart';

Either<ValueFailure<String>,String> validateGradeSystem(String gradeSystem){
  final input = gradeSystem.trim();
  if(input == 'oneToSix'){
    return right(input);
  }else if(input == 'zeroToFifteen'){
    return right(input);
  }else{
    return left(ValueFailure.invalidGradeSystem(failedValue: input));
  }
}