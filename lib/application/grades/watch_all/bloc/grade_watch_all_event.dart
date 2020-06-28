part of 'grade_watch_all_bloc.dart';

///Stellt die möglichen Events mit benannten Konstruktoren dar.
@freezed
abstract class GradeWatchAllEvent with _$GradeWatchAllEvent {
  ///Laden von allen Fächern wird angefordert.
  const factory GradeWatchAllEvent.watchAllStarted() =
      WatchSubjectGradesStarted;

  ///Daten wurden erfolgreich empfangen.
  ///Validierung der Daten gefordert.
  const factory GradeWatchAllEvent.gradesReceived(
    Either<SubjectFailures, KtList<Grade>> failureOrGrades,
  ) = GradesReceived;

  ///Wechseln des aktuellen Halbjahres gefordert.
  const factory GradeWatchAllEvent.changeTerm(Term term) = ChangeTerm;
}
