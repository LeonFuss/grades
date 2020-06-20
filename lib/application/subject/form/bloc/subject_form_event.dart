part of 'subject_form_bloc.dart';

@freezed
abstract class SubjectFormEvent with _$SubjectFormEvent {
  const factory SubjectFormEvent.initialized(
      Option<Subject> initialSubjectOption) = _Initialized;
  const factory SubjectFormEvent.nameChanged(String input) = _BodyChanged;
  const factory SubjectFormEvent.saved() = _Saved;
}
