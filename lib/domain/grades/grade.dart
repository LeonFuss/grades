import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart';

part 'grade.freezed.dart';

@freezed
abstract class Grade implements _$Grade {
  const Grade._();

  const factory Grade(
      {@required UniqueId id,
      @required GradeValue value,
      @required GradeType type,
      @required GradeDescription description,
      @required UniqueId subjectId,
      @required Term term}) = _Grade;

  factory Grade.empty(Subject binding) {
    return Grade(
        id: UniqueId(),
        value: GradeValue(0),
        type: GradeType(GradeType.gradeTypes[0]),
        description: GradeDescription('input'),
        subjectId: binding.id,
        term: Term(1));
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return value.failureOrUnit
        .andThen(type.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(term.failureOrUnit)
        .fold((l) => some(l), (_) => none());
  }
}
