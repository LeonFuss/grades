part of 'subject_watcher_bloc.dart';

///Mögliche Zustände in Form von benannten Konstruktoren dargestellt.
@freezed
abstract class SingleSubjectWatcherState with _$SingleSubjectWatcherState {
  ///Anfangszustand in dem nur das aktuelle Halbjahr gespeichert ist.
  const factory SingleSubjectWatcherState.initial({@required Term term}) =
      Initial;

  ///Zustand der eintritt, wenn Daten geladen werde.
  const factory SingleSubjectWatcherState.loadInProgress(
      {@required Term term}) = DataTransferInProgress;

  ///Zustand der eintritt, wenn Daten erfolgreich geladen wurden.
  ///Die geladenen Daten und das aktuelle Halbjahr sind gespeichert.
  const factory SingleSubjectWatcherState.loadSuccess(
      {@required Subject subject, @required Term term}) = LoadSuccess;

  ///Zustand der eintritt, wenn Daten nicht erfolgreich geladen wurden.
  ///Es sind ein Fehlerbericht und das aktuelle Halbjahr gespeichert.
  const factory SingleSubjectWatcherState.loadFailure(
      {@required SubjectFailures subjectFailures,
      @required Term term}) = LoadFailure;
}
