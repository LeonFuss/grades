import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures.dart';

///Das Dokument beinhaltet nur Top-Level Funktionen, die die Wertobjekte verifizieren.

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<int>, int> validateGradeRange(int grade, int highestValue) {
  if (grade >= 0 && grade <= highestValue) {
    return right(grade);
  } else {
    return left(ValueFailure.gradeOutOfRange(failedValue: grade));
  }
}

Either<ValueFailure<int>, int> validateGradeFromString(String input) {
  try {
    final int grade = int.parse(input);
    return right(grade);
  } catch (e) {
    return left(const ValueFailure.invalidStringInput(failedValue: -1));
  }
}

Either<ValueFailure<double>, double> validateAverageRange(
    double grade, double highestValue) {
  if (grade >= 0 && grade <= highestValue) {
    return right(grade);
  } else if (grade == -1) {
    return left(ValueFailure.notInitialized(failedValue: grade));
  } else {
    return left(ValueFailure.averageOutOfRange(failedValue: grade));
  }
}

Either<ValueFailure<String>, String> validateGradeType(
    String input, List<String> gradeTypes) {
  if (gradeTypes.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidGradeType(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSubjectName(String input) {
  return validateStringNotEmpty(input);
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateTerm(int input, int amountTerms) {
  if (input > 0 && input <= amountTerms) {
    return right(input);
  } else {
    return left(ValueFailure.termOutOfRange(failedValue: input));
  }
}
