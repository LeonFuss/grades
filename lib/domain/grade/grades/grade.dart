import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grades/value_objects.dart';

part 'grade.freezed.dart';

///[Grade] ist eine Entität, die eine Note beschreibt. Sie beinhaltet nur Wertobjekte die sich selbst validieren.
@freezed
abstract class Grade implements _$Grade {
  const factory Grade(
      {@required DateTime creationTime,
      @required UniqueId id,
      @required GradeValue value,
      @required GradeType type,
      @required GradeDescription description,
      @required UniqueId subjectId,
      @required Term term}) = _Grade;

  const Grade._();

  factory Grade.empty(Term term) {
    return Grade(
      creationTime: DateTime.now().toUtc(),
      id: UniqueId(),
      value: GradeValue(0),
      type: GradeType.muendlich(),
      description: GradeDescription(''),
      subjectId: UniqueId.uninitialized(),
      term: term ?? Term(1),
    );
  }

  ///Verifizierung aller enthaltenen Wertobjekte.
  Option<ValueFailure<dynamic>> get failureOption {
    return value.failureOrUnit
        .andThen(type.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(term.failureOrUnit)
        .andThen(subjectId.failureOrUnit)
        .fold((l) => some(l), (_) => none());
  }
}
