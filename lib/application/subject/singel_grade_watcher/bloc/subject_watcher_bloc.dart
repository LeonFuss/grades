import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:injectable/injectable.dart';

part 'subject_watcher_bloc.freezed.dart';
part 'subject_watcher_event.dart';
part 'subject_watcher_state.dart';

///[SingleSubjectWatcherBloc] verwaltet alle anfragen von der UI die eine einzige Note betreffen betreffen und
/// gibt die korrespondierenden Ergebnisse zurück.
@injectable
class SingleSubjectWatcherBloc
    extends Bloc<SingleSubjectWatcherEvent, SingleSubjectWatcherState> {
  final ISubjectRepository _subjectRepository;

  SingleSubjectWatcherBloc(this._subjectRepository)
      : super(SingleSubjectWatcherState.initial(term: Term(1)));

  StreamSubscription<Either<SubjectFailures, Subject>>
      _subjectStreamSubscription;

  @override
  Stream<SingleSubjectWatcherState> mapEventToState(
    SingleSubjectWatcherEvent event,
  ) async* {
    yield* event.map(
      ///[SingleSubjectWatcherEvent.watchAllStarted] wurde ausgelöst.
      watchSubjectStarted: (e) async* {
        ///Der Zustand wird auf laden geändet.
        yield SingleSubjectWatcherState.loadInProgress(term: term);

        ///Ein Stream zur Datenbank wird hergestellt und
        ///die ermittelten Daten werden durch das Event [SingleSubjectWatcherEvent.subjectsReceived] weitergegeben.
        await _subjectStreamSubscription?.cancel();
        _subjectStreamSubscription = _subjectRepository
            .watchSubject(e.subject)
            .listen((subject) =>
                add(SingleSubjectWatcherEvent.subjectsReceived(subject)));
      },

      ///[SingleSubjectWatcherEvent.subjectsReceived] wurde ausgelöst.
      subjectsReceived: (e) async* {
        ///Bei den empfangen Daten wird geprüft ob diese gültig sind.
        ///Sollten sie Fehler enthalten wird der Zustand auf [SingleSubjectWatcherState.loadFailure] gesetzt.
        ///Ansonsten wird der Zustand auf  SingleSubjectWatcherState.loadSuccess gesetzt.
        yield e.failureOrSubject.fold(
          (f) => SingleSubjectWatcherState.loadFailure(
              subjectFailures: f, term: term),
          (subject) => SingleSubjectWatcherState.loadSuccess(
              subject: subject, term: term),
        );
      },

      ///[SingleSubjectWatcherEvent.changeTerm] wurde ausgelöst.
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
  SingleSubjectWatcherState copyStateWithChangedTerm(Term term) {
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
