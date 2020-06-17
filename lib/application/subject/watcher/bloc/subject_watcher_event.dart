part of 'subject_watcher_bloc.dart';

///Stellt die möglichen Events mit benannten Konstruktoren dar.
@freezed
abstract class SubjectWatcherEvent with _$SubjectWatcherEvent {
  ///Laden von allen Fächern wird angefordert.
  const factory SubjectWatcherEvent.watchAllStarted() = WatchAllStarted;

  ///Daten wurden erfolgreich empfangen.
  ///Validierung der Daten gefordert.
  const factory SubjectWatcherEvent.subjectsReceived(
          Either<SubjectFailures, KtList<Subject>> failureOrSubjects) =
      SubjectsReceived;

  ///Wechseln des aktuellen Halbjahres gefordert.
  const factory SubjectWatcherEvent.changeTerm(Term term) = ChangeTerm;
}
