import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/value_validators.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

import 'common_interfaces.dart';
import 'errors.dart';
import 'failures.dart';

///[ValueObject] wird von allen Wertobjekten erweitert.
@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Wirft [UnexpectedValueError] der [ValueFailure] beinhaltet.
  /// Wird genutzt wenn der Wert des Wertobjekts aufgerufen wird und es bereits validiert wurde.
  /// Sollte trotzdem ein fehler vorliegen wird die App zum Absturz gebracht,
  /// da ein Zustand geschaffen wurde mit dem es nicht mehr möglich ist zu arbeiten.
  T getOrCrash() {
    // id = identity - das gleiche wie (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  ///[getOrElse] gibt den Wert zurück sollte der Wert verifiziert sein.
  ///Ist er das nicht wird die Funktion orElse ausgeführt.
  T getOrElse(T orElse) {
    return value.getOrElse(() => orElse);
  }

  ///[failureOrUnit] transformiert den Attributwert des Wertobjekts in ein einheitliches Schema,
  ///sodass mehrere Wertobjekte gleichzeitig validiert werden können.
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Stellt sicher, dass die UUid auf wirklich eizigartig ist
  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  ///Benutzt Strings die vertrauenswürdig sind als UUid (z.B. von Datenbanken)
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    assert(uniqueIdStr != null);
    return UniqueId._(
      right(uniqueIdStr),
    );
  }

  const UniqueId._(this.value);
}

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    assert(input != null);
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);
}
