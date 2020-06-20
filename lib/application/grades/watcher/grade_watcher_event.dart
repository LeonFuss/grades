part of 'grade_watcher_bloc.dart';

///Stellt die möglichen Events mit benannten Konstruktoren dar.
@freezed
abstract class GradeWatcherEvent with _$GradeWatcherEvent {
  ///Laden von allen Fächern wird angefordert.
  const factory GradeWatcherEvent.watchSubjectGradesStarted(Subject subject) =
      WatchSubjectGradesStarted;

  ///Daten wurden erfolgreich empfangen.
  ///Validierung der Daten gefordert.
  const factory GradeWatcherEvent.gradesReceived(
      Either<GradeFailures, KtList<Grade>> failureOrGrades) = GradesReceived;

  ///Wechseln des aktuellen Halbjahres gefordert.
  const factory GradeWatcherEvent.changeTerm(Term term) = ChangeTerm;
}
