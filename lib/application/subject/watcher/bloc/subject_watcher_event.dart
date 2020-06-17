part of 'subject_watcher_bloc.dart';

@freezed
abstract class SubjectWatcherEvent with _$SubjectWatcherEvent {
  const factory SubjectWatcherEvent.watchAllStarted() = WatchAllStarted;

  const factory SubjectWatcherEvent.subjectsReceived(
          Either<SubjectFailures, KtList<Subject>> failureOrSubjects) =
      SubjectsReceived;

  const factory SubjectWatcherEvent.changeTerm(Term term) = ChangeTerm;
}
