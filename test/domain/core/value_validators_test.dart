import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grades/domain/core/value_validators.dart';

void main() {
  test('Test Validators', () {
    const String test = 'Hello';
    final result = validateMaxStringLength(test, 20);

    expect(result, right('Hello'));
  });
}
