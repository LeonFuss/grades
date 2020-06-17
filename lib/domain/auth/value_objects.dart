import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/core/value_validators.dart';

///Die Datei enthält alle Wertobjekte, die für die Klasse [User] notwendig sind.
///Die Wertobjekte folgen dabei dem gleichen Schema:
///Sie erweitern alle die generische abstrakte Klasse [ValueObject].
///Jede Klasse besitzt einen Privaten Konstruktor, der von der Factory-Methode aufgerufen wird,
///nachdem eine validierung des eingegebenen Wertes vorgenommen wurde.
///Die validierten Eingaben werden dann in dem Attribut value gespeichert.

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
