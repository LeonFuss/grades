part of 'subject_watcher_bloc.dart';

///Mögliche Zustände in Form von benannten Konstruktoren dargestellt.
@freezed
abstract class SubjectWatcherState with _$SubjectWatcherState {
  ///Anfangszustand in dem nur das aktuelle Halbjahr gespeichert ist.
  const factory SubjectWatcherState.initial({Term term}) = Initial;

  ///Zustand der eintritt, wenn Daten geladen werde.
  const factory SubjectWatcherState.loadInProgress({@required Term term}) =
      DataTransferInProgress;

  ///Zustand der eintritt, wenn Daten erfolgreich geladen wurden.
  ///Die geladenen Daten und das aktuelle Halbjahr sind gespeichert.
  const factory SubjectWatcherState.loadSuccess(
      {@required KtList<Subject> subjects, @required Term term}) = LoadSuccess;

  ///Zustand der eintritt, wenn Daten nicht erfolgreich geladen wurden.
  ///Es sind ein Fehlerbericht und das aktuelle Halbjahr gespeichert.
  const factory SubjectWatcherState.loadFailure(
      {@required SubjectFailures subjectFailures,
      @required Term term}) = LoadFailure;
}
