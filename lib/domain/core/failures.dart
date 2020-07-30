import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

///Eine Sammlung aller Fehler, die bei der Validierung auftreten können, repräsentiert durch benannte Konstruktoren.
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;

  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;

  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.gradeOutOfRange({
    @required T failedValue,
  }) = GradeOutOfRange<T>;

  const factory ValueFailure.averageOutOfRange({
    @required T failedValue,
  }) = AverageOutOfRange<T>;

  const factory ValueFailure.invalidGradeType({
    @required T failedValue,
  }) = InvalidGradeType<T>;

  const factory ValueFailure.notInitialized({
    @required T failedValue,
  }) = NotInitialized<T>;

  const factory ValueFailure.termOutOfRange({
    @required T failedValue,
  }) = TermOutOfRange<T>;

  const factory ValueFailure.invalidStringInput({
    @required T failedValue,
  }) = _InvalidStringInput<T>;

  const factory ValueFailure.invalidGradeSystem({
    @required T failedValue,
  }) = _InvalidGradeSystem<T>;

  const factory ValueFailure.invalidDay({
    @required T failedValue,
  }) = _InvalidDay<T>;

  const factory ValueFailure.periodOutOfBounds({
    @required T failedValue,
  }) = _PeriodOutOfBounds<T>;

  const factory ValueFailure.lessonDurationOutOfBounds({
    @required T failedValue,
  }) = _LessonDurationOutOfBounds<T>;
}
