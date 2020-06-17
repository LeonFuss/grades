import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'subject_watcher_bloc.freezed.dart';
part 'subject_watcher_event.dart';
part 'subject_watcher_state.dart';

@injectable
class NoteWatcherBloc extends Bloc<SubjectWatcherEvent, SubjectWatcherState> {
  final ISubjectRepository _noteRepository;

  NoteWatcherBloc(this._noteRepository);

  StreamSubscription<Either<SubjectFailures, KtList<Subject>>>
      _noteStreamSubscription;

  @override
  SubjectWatcherState get initialState => SubjectWatcherState.initial(Term(1));

  @override
  Stream<SubjectWatcherState> mapEventToState(
    SubjectWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield SubjectWatcherState.loadInProgress(term: term);
        await _noteStreamSubscription?.cancel();
        _noteStreamSubscription = _noteRepository.watchAll(term).listen(
            (subjects) => add(SubjectWatcherEvent.subjectsReceived(subjects)));
      },
      subjectsReceived: (e) async* {
        yield e.failureOrSubjects.fold(
          (f) =>
              SubjectWatcherState.loadFailure(subjectFailures: f, term: term),
          (subjects) =>
              SubjectWatcherState.loadSuccess(subjects: subjects, term: term),
        );
      },
      changeTerm: (e) async* {
        yield copyStateWithChangedTerm(
            e.maybeWhen(changeTerm: (t) => t, orElse: () => Term(1)));
      },
    );
  }

  @override
  Future<void> close() async {
    await _noteStreamSubscription.cancel();
    return super.close();
  }

  Term get term {
    final currentState = state;
    if (currentState is Initial) {
      return currentState.term;
    } else if (currentState is DataTransferInProgress) {
      return currentState.term;
    } else if (currentState is LoadSuccess) {
      return currentState.term;
    } else if (currentState is LoadFailure) {
      return currentState.term;
    }
    return Term(1);
  }

  SubjectWatcherState copyStateWithChangedTerm(Term term) {
    final currentState = state;
    if (currentState is Initial) {
      return currentState.copyWith(term: term);
    } else if (currentState is DataTransferInProgress) {
      return currentState.copyWith(term: term);
    } else if (currentState is LoadSuccess) {
      return currentState.copyWith(term: term);
    } else if (currentState is LoadFailure) {
      return currentState.copyWith(term: term);
    }
    return currentState;
  }
}
