part of 'subject_form_bloc.dart';

@freezed
abstract class SubjectFormState with _$SubjectFormState {
  const factory SubjectFormState({
    @required Subject subject,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<SubjectFailures, Unit>> saveFailureOrSuccessOption,
  }) = _SubjectFormState;

  factory SubjectFormState.initial() => SubjectFormState(
        subject: Subject.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
