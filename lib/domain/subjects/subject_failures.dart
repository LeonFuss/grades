import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_failures.freezed.dart';

@freezed
abstract class SubjectFailures with _$SubjectFailures {
  const factory SubjectFailures.unexpected() = _Unexpected;
  const factory SubjectFailures.insufficientPermissions() =
      _InsufficientPermissions;
  const factory SubjectFailures.unableToUpdate() = UnableToUpdate;
}
