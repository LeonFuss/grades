import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/core/value_transformers.dart';
import 'package:grades/domain/core/value_validators.dart';
import 'grade.dart';
import 'package:kt_dart/kt.dart';

///Die Datei enthält alle Wertobjekte, die für die Klasse [Grade] notwendig sind.
///Die Wertobjekte folgen dabei dem gleichen Schema:
///Sie erweitern alle die generische abstrakte Klasse [ValueObject].
///Jede Klasse besitzt einen Privaten Konstruktor, der von der Factory-Methode aufgerufen wird,
///nachdem eine validierung des eingegebenen Wertes vorgenommen wurde.
///Die validierten Eingaben werden dann in dem Attribut value gespeichert.

class GradeDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 50;

  factory GradeDescription(String input) {
    return GradeDescription._(
      validateMaxStringLength(emptyIfNull(input), maxLength)
          .flatMap(validateSingleLine)
          .flatMap(validateStringNotEmpty),
    );
  }

  const GradeDescription._(this.value);
}

class GradeValue extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const highestValue = 15;

  factory GradeValue(int input) {
    assert(input != null);
    return GradeValue._(
      validateGradeRange(input, highestValue),
    );
  }

  factory GradeValue.fromString(String input) {
    assert(input != null);
    return GradeValue._(validateGradeFromString(input)
        .flatMap((grade) => validateGradeRange(grade, highestValue)));
  }

  const GradeValue._(this.value);
}

class GradeType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> gradeTypes = [
    'Schriftlich',
    'Mündlich',
  ];

  factory GradeType(String input) {
    assert(input != null);
    return GradeType._(
      validateGradeType(input, gradeTypes),
    );
  }

  factory GradeType.muendlich() {
    return GradeType._(
      validateGradeType('Mündlich', gradeTypes),
    );
  }

  factory GradeType.schriftlich() {
    return GradeType._(
      validateGradeType('Schriftlich', gradeTypes),
    );
  }

  const GradeType._(this.value);
}

class List20<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 20;

  factory List20(KtList<T> input) {
    assert(input != null);
    return List20._(validateMaxListLength(input, maxLength));
  }

  const List20._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

class Term extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const amountTerms = 4;

  static const terms = [
    '',
    'Q11/1',
    'Q11/2',
    'Q12/1',
    'Q12/2',
  ];

  factory Term(int input) {
    assert(input != null);
    return Term._(validateTerm(input, amountTerms));
  }

  factory Term.first() {
    return Term(1);
  }

  factory Term.second() {
    return Term(2);
  }

  factory Term.third() {
    return Term(3);
  }

  factory Term.forth() {
    return Term(4);
  }

  const Term._(this.value);

  @override
  String toString() {
    final term = value.getOrElse(() => 0);
    return terms[term];
  }
}
