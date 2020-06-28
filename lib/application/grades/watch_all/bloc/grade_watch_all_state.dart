part of 'grade_watch_all_bloc.dart';

///Mögliche Zustände in Form von benannten Konstruktoren dargestellt.
@freezed
abstract class GradeWatchAllState with _$GradeWatchAllState {
  ///Anfangszustand in dem nur das aktuelle Halbjahr gespeichert ist.
  const factory GradeWatchAllState.initial({Term term}) = Initial;

  ///Zustand der eintritt, wenn Daten geladen werde.
  const factory GradeWatchAllState.loadInProgress({@required Term term}) =
      DataTransferInProgress;

  ///Zustand der eintritt, wenn Daten erfolgreich geladen wurden.
  ///Die geladenen Daten und das aktuelle Halbjahr sind gespeichert.
  const factory GradeWatchAllState.loadSuccess({
    @required KtList<Grade> grades,
    @required KtList<Grade> oralGrades,
    @required KtList<Grade> writtenGrades,
    @required Term term,
  }) = LoadSuccess;

  ///Zustand der eintritt, wenn Daten nicht erfolgreich geladen wurden.
  ///Es sind ein Fehlerbericht und das aktuelle Halbjahr gespeichert.
  const factory GradeWatchAllState.loadFailure(
      {@required SubjectFailures failures, @required Term term}) = LoadFailure;
}
