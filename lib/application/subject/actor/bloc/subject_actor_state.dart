part of 'subject_actor_bloc.dart';

@freezed
abstract class SubjectActorState with _$SubjectActorState {
  const factory SubjectActorState.initial() = _Initial;
  const factory SubjectActorState.actionInProgress() = _ActionInProgress;
  const factory SubjectActorState.failure(SubjectFailures subjectFailure) =
      _Failure;
  const factory SubjectActorState.success() = _Success;
}
