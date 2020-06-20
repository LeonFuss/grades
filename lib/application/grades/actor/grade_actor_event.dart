part of 'grade_actor_bloc.dart';

@freezed
abstract class GradeActorEvent with _$GradeActorEvent {
  const factory GradeActorEvent.deleted(Grade grade) = _Deleted;
  const factory GradeActorEvent.create(Grade grade) = _Create;
  const factory GradeActorEvent.update(Grade grade) = _Update;
}
