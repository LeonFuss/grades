part of 'subject_watcher_bloc.dart';

@freezed
abstract class SubjectWatcherState with _$NoteWatcherState {
  const factory SubjectWatcherState.initial(Term term) = Initial;

  const factory SubjectWatcherState.loadInProgress({@required Term term}) =
      DataTransferInProgress;

  const factory SubjectWatcherState.loadSuccess(
      {@required KtList<Subject> subjects, @required Term term}) = LoadSuccess;

  const factory SubjectWatcherState.loadFailure(
      {@required SubjectFailures subjectFailures,
      @required Term term}) = LoadFailure;
}
