part of 'subject_watcher_bloc.dart';

///Stellt die möglichen Events mit benannten Konstruktoren dar.
@freezed
abstract class SingleSubjectWatcherEvent with _$SingleSubjectWatcherEvent {
  ///Laden von allen Fächern wird angefordert.
  const factory SingleSubjectWatcherEvent.watchSubjectStarted(Subject subject) =
      WatchSubjectSubjectsStarted;

  ///Daten wurden erfolgreich empfangen.
  ///Validierung der Daten gefordert.
  const factory SingleSubjectWatcherEvent.subjectsReceived(
      Either<SubjectFailures, Subject> failureOrSubject) = SubjectsReceived;

  ///Wechseln des aktuellen Halbjahres gefordert.
  const factory SingleSubjectWatcherEvent.changeTerm(Term term) = ChangeTerm;
}
