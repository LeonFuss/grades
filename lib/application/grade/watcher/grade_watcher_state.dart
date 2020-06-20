part of 'grade_watcher_bloc.dart';

///Mögliche Zustände in Form von benannten Konstruktoren dargestellt.
@freezed
abstract class SingleGradeWatcherState with _$SingleGradeWatcherState {
  ///Anfangszustand in dem nur das aktuelle Halbjahr gespeichert ist.
  const factory SingleGradeWatcherState.initial({@required Term term}) =
      Initial;

  ///Zustand der eintritt, wenn Daten geladen werde.
  const factory SingleGradeWatcherState.loadInProgress({@required Term term}) =
      DataTransferInProgress;

  ///Zustand der eintritt, wenn Daten erfolgreich geladen wurden.
  ///Die geladenen Daten und das aktuelle Halbjahr sind gespeichert.
  const factory SingleGradeWatcherState.loadSuccess(
      {@required Grade grade, @required Term term}) = LoadSuccess;

  ///Zustand der eintritt, wenn Daten nicht erfolgreich geladen wurden.
  ///Es sind ein Fehlerbericht und das aktuelle Halbjahr gespeichert.
  const factory SingleGradeWatcherState.loadFailure(
      {@required GradeFailures gradeFailures,
      @required Term term}) = LoadFailure;
}
