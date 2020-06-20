part of 'grade_actor_bloc.dart';

@freezed
abstract class GradeActorState with _$GradeActorState {
  const factory GradeActorState.initial() = _Initial;
  const factory GradeActorState.actionInProgress() = _ActionInProgress;
  const factory GradeActorState.failure(GradeFailures gradeFailure) = _Failure;
  const factory GradeActorState.success() = _Success;
}
