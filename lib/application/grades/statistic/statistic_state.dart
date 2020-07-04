part of 'statistic_bloc.dart';

///Mögliche Zustände in Form von benannten Konstruktoren dargestellt.
@freezed
abstract class StatisticState with _$StatisticState {
  ///Anfangszustand in dem nur das aktuelle Halbjahr gespeichert ist.
  const factory StatisticState.initial({Term term}) = Initial;

  ///Zustand der eintritt, wenn Daten geladen werde.
  const factory StatisticState.loadInProgress({@required Term term}) =
      DataTransferInProgress;

  ///Zustand der eintritt, wenn Daten erfolgreich geladen wurden.
  ///Die geladenen Daten und das aktuelle Halbjahr sind gespeichert.
  const factory StatisticState.loadSuccess({
    @required KtList<Grade> grades,
    @required KtList<Grade> oralGrades,
    @required KtList<Grade> writtenGrades,
    @required Option<Subject> bestSubject,
    @required String bestSubjectName,
    @required String bestSubjectAverage,
    @required Option<Subject> worseSubject,
    @required String worseSubjectName,
    @required String worseSubjectAverage,
    @required String gradeAverage,
    @required Term term,
  }) = LoadSuccess;

  ///Zustand der eintritt, wenn Daten nicht erfolgreich geladen wurden.
  ///Es sind ein Fehlerbericht und das aktuelle Halbjahr gespeichert.
  const factory StatisticState.loadFailure(
      {@required SubjectFailures failures, @required Term term}) = LoadFailure;
}
