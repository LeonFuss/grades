import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/value_objects.dart';

part 'subject.freezed.dart';

@freezed
abstract class Subject implements _$Subject {
  const Subject._();

  const factory Subject(
      {@required UniqueId id,
      @required SubjectName name,
      @required Average average,
      @required Average oralAverage,
      @required Average writtenAverage,
      @required int position,
      @required Term term}) = _Subject;

  factory Subject.empty() {
    return Subject(
      id: UniqueId(),
      name: SubjectName(''),
      average: Average.empty(),
      oralAverage: Average.empty(),
      writtenAverage: Average.empty(),
      position: -1,
      term: Term(1),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(average.failureOrUnit)
        .andThen(oralAverage.failureOrUnit)
        .andThen(writtenAverage.failureOrUnit)
        .andThen(term.failureOrUnit)
        .fold((l) => some(l), (_) => none());
  }
}
