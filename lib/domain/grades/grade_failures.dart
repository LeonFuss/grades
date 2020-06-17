import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade_failures.freezed.dart';

@freezed
abstract class GradeFailures with _$GradeFailures {
  const factory GradeFailures.unexpected() = _Unexpected;
  const factory GradeFailures.insufficientPermissions() =
      _InsufficientPermissions;
  const factory GradeFailures.unableToUpdate() = _UnableToUpdate;
}
