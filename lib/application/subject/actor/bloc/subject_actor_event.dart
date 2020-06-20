part of 'subject_actor_bloc.dart';

@freezed
abstract class SubjectActorEvent with _$SubjectActorEvent {
  const factory SubjectActorEvent.deleted(Subject subject) = _Deleted;
  const factory SubjectActorEvent.create(Subject subject) = _Create;
  const factory SubjectActorEvent.update(Subject subject) = _Update;
}
