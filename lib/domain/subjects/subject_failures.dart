import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/subjects/subject.dart';

part 'subject_failures.freezed.dart';

///Fehler die Spezifisch für die Klasse [Subject] sind.
@freezed
abstract class SubjectFailures with _$SubjectFailures {
  const factory SubjectFailures.unexpected() = _Unexpected;
  const factory SubjectFailures.insufficientPermissions() =
      _InsufficientPermissions;
  const factory SubjectFailures.unableToUpdate() = UnableToUpdate;
}
