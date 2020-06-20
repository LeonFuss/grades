part of 'grade_watcher_bloc.dart';

///Mögliche Zustände in Form von benannten Konstruktoren dargestellt.
@freezed
abstract class GradeWatcherState with _$GradeWatcherState {
  ///Anfangszustand in dem nur das aktuelle Halbjahr gespeichert ist.
  const factory GradeWatcherState.initial({Term term}) = Initial;

  ///Zustand der eintritt, wenn Daten geladen werde.
  const factory GradeWatcherState.loadInProgress({@required Term term}) =
      DataTransferInProgress;

  ///Zustand der eintritt, wenn Daten erfolgreich geladen wurden.
  ///Die geladenen Daten und das aktuelle Halbjahr sind gespeichert.
  const factory GradeWatcherState.loadSuccess(
      {@required KtList<Grade> grades, @required Term term}) = LoadSuccess;

  ///Zustand der eintritt, wenn Daten nicht erfolgreich geladen wurden.
  ///Es sind ein Fehlerbericht und das aktuelle Halbjahr gespeichert.
  const factory GradeWatcherState.loadFailure(
      {@required GradeFailures gradeFailures,
      @required Term term}) = LoadFailure;
}
