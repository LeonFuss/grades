part of 'grade_form_bloc.dart';

@freezed
abstract class GradeFormEvent with _$GradeFormEvent {
  const factory GradeFormEvent.initialized(
      Option<Grade> initialGradeOption, Subject subject) = _Initialized;
  const factory GradeFormEvent.descriptionChanged(String input) =
      _DescriptionChanged;
  const factory GradeFormEvent.gradeValueChanged(String gradeValue) =
      _GradeValueChanged;
  const factory GradeFormEvent.gradeTypeChanged(String type) =
      _GradeTypeChanged;

  const factory GradeFormEvent.saved() = _Saved;
}
