import 'package:dartz/dartz.dart';
import 'package:grades/domain/core/errors.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/core/value_validators.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/subjects/subject.dart';

///Die Datei enthält alle Wertobjekte, die für die Klasse [Subject] notwendig sind.
///Die Wertobjekte folgen dabei dem gleichen Schema:
///Sie erweitern alle die generische abstrakte Klasse [ValueObject].
///Jede Klasse besitzt einen Privaten Konstruktor, der von der Factory-Methode aufgerufen wird,
///nachdem eine validierung des eingegebenen Wertes vorgenommen wurde.
///Die validierten Eingaben werden dann in dem Attribut value gespeichert.

class SubjectName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory SubjectName(String input) {
    assert(input != null);
    return SubjectName._(
      validateSubjectName(input)
          .flatMap((a) => validateSingleLine(a))
          .flatMap((a) => validateMaxStringLength(input, maxLength)),
    );
  }

  const SubjectName._(this.value);
}

class Average extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const double highestValue = 15;

  factory Average(double average) {
    assert(average != null);
    return Average._(validateAverageRange(average, highestValue));
  }

  factory Average.empty() {
    return Average._(left(const ValueFailure.notInitialized(failedValue: -1)));
  }

  @override
  double getOrCrash() {
    return value.fold(
        (f) => f.maybeWhen(
            notInitialized: (value) => value,
            orElse: () => throw UnexpectedValueError(f)),
        id);
  }

  @override
  String toString() {
    final double = getOrCrash();
    if (double == -1) {
      return '--';
    } else {
      return double.toString();
    }
  }

  const Average._(this.value);

  factory Average.fromGrades(List<Grade> input) {
    if (input == null || input.isEmpty) return Average.empty();

    final grades =
        input.map((Grade grade) => grade.value.getOrCrash()).toList();
    final sum =
        grades.fold(0, (previousValue, element) => previousValue + element);
    return Average(sum / grades.length);
  }

  factory Average.fromOralAndWrittenAverage(Average oral, Average written) {
    if (oral.isValid() && written.isValid()) {
      return Average((oral.getOrCrash() + written.getOrCrash()) / 2);
    } else if (oral.isValid() && !written.isValid()) {
      return oral;
    } else if (!oral.isValid() && written.isValid()) {
      return written;
    } else {
      return Average.empty();
    }
  }

  //Stellt sicher, dass "noch nicht initialisiert" nicht als ungültig gewertet wird
  @override
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) {
        return l.maybeMap(
          notInitialized: (_) => right(unit),
          orElse: () => left(l),
        );
      },
      (r) => right(unit),
    );
  }
}
