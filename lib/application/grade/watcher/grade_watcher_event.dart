part of 'grade_watcher_bloc.dart';

///Stellt die möglichen Events mit benannten Konstruktoren dar.
@freezed
abstract class SingleGradeWatcherEvent with _$SingleGradeWatcherEvent {
  ///Laden von allen Fächern wird angefordert.
  const factory SingleGradeWatcherEvent.watchGradeStarted(Grade grade) =
      WatchSubjectGradesStarted;

  ///Daten wurden erfolgreich empfangen.
  ///Validierung der Daten gefordert.
  const factory SingleGradeWatcherEvent.gradesReceived(
      Either<GradeFailures, Grade> failureOrGrade) = GradesReceived;

  ///Wechseln des aktuellen Halbjahres gefordert.
  const factory SingleGradeWatcherEvent.changeTerm(Term term) = ChangeTerm;
}
