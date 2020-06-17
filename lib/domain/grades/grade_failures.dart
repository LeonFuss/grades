import 'package:freezed_annotation/freezed_annotation.dart';

import 'grade.dart';

part 'grade_failures.freezed.dart';

///Fehler die Spezifisch für die Klasse [Grade] sind.
@freezed
abstract class GradeFailures with _$GradeFailures {
  const factory GradeFailures.unexpected() = _Unexpected;
  const factory GradeFailures.insufficientPermissions() =
      _InsufficientPermissions;
  const factory GradeFailures.unableToUpdate() = _UnableToUpdate;
}
