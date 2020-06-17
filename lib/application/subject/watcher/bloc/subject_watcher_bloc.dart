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

///[SubjectWatcherBloc] verwaltet alle anfragen von der UI die die Fächer betreffen und
/// gibt die korrespondierenden Ergebnisse zurück.
@injectable
class SubjectWatcherBloc
    extends Bloc<SubjectWatcherEvent, SubjectWatcherState> {
  final ISubjectRepository _subjectRepository;

  SubjectWatcherBloc(this._subjectRepository);

  StreamSubscription<Either<SubjectFailures, KtList<Subject>>>
      _subjectStreamSubscription;

  @override
  SubjectWatcherState get initialState =>
      SubjectWatcherState.initial(term: Term(1));

  @override
  Stream<SubjectWatcherState> mapEventToState(
    SubjectWatcherEvent event,
  ) async* {
    yield* event.map(
      ///[SubjectWatcherEvent.watchAllStarted] wurde ausgelöst.
      watchAllStarted: (e) async* {
        ///Der Zustand wird auf laden geändet.
        yield SubjectWatcherState.loadInProgress(term: term);

        ///Ein Stream zur Datenbank wird hergestellt und
        ///1die ermittelten Daten werden durch das Event [SubjectWatcherEvent.subjectsReceived] weitergegeben.
        await _subjectStreamSubscription?.cancel();
        _subjectStreamSubscription = _subjectRepository.watchAll(term).listen(
                (subjects) =>
                add(SubjectWatcherEvent.subjectsReceived(subjects)));
      },

      ///[SubjectWatcherEvent.subjectsReceived] wurde ausgelöst.
      subjectsReceived: (e) async* {
        ///Bei den empfangen Daten wird geprüft ob diese gültig sind.
        ///Sollten sie Fehler enthalten wird der Zustand auf [SubjectWatcherState.loadFailure] gesetzt.
        ///Ansonsten wird der Zustand auf  SubjectWatcherState.loadSuccess gesetzt.
        yield e.failureOrSubjects.fold(
              (f) =>
              SubjectWatcherState.loadFailure(subjectFailures: f, term: term),
              (subjects) =>
              SubjectWatcherState.loadSuccess(subjects: subjects, term: term),
        );
      },

      ///[SubjectWatcherEvent.changeTerm] wurde ausgelöst.
      changeTerm: (e) async* {
        yield copyStateWithChangedTerm(
            e.maybeWhen(changeTerm: (t) => t, orElse: () => Term(1)));
      },
    );
  }

  ///[close] bereinigt den Speicher, kurz bevor die Klasse gelöscht wird.
  @override
  Future<void> close() async {
    await _subjectStreamSubscription.cancel();
    return super.close();
  }

  ///[term] ist eine getter Methode, um das aktuelle Halbjahr aus den Zuständen zu extrahieren.
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

  ///[copyStateWithChangedTerm] ist eine Methode um das aktuelle Halbjahr im Zustand zu ändern.
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
