part of 'grade_form_bloc.dart';

@freezed
abstract class GradeFormState with _$GradeFormState {
  const factory GradeFormState({
    @required KtList<Subject> subjects,
    @required Grade grade,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<GradeFailures, Unit>> saveFailureOrSuccessOption,
  }) = _GradeFormState;

  factory GradeFormState.initial() => GradeFormState(
        subjects: KtList.empty(),
        grade: Grade.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
