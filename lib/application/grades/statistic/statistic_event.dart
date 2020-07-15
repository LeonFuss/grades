part of 'statistic_bloc.dart';

///Stellt die möglichen Events mit benannten Konstruktoren dar.
@freezed
abstract class StatisticEvent with _$StatisticEvent {
  ///Laden von allen Fächern wird angefordert.
  const factory StatisticEvent.statisticStarted() = WatchSubjectGradesStarted;

  ///Daten wurden erfolgreich empfangen.
  ///Validierung der Daten gefordert.
  const factory StatisticEvent.gradesReceived(
    Either<GradeFailures, KtList<Grade>> failureOrGrades,
  ) = GradesReceived;

  ///Wechseln des aktuellen Halbjahres gefordert.
  const factory StatisticEvent.changeTerm(Term term) = ChangeTerm;
}
