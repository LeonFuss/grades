import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/grade/grades/grade.dart';
import 'package:grades/domain/grade/grades/grade_failures.dart';
import 'package:grades/domain/grade/grades/i_grade_repository.dart';
import 'package:grades/domain/grade/grades/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'grade_watcher_bloc.freezed.dart';
part 'grade_watcher_event.dart';
part 'grade_watcher_state.dart';

///[SingleGradeWatcherBloc] verwaltet alle anfragen von der UI die eine einzige Note betreffen betreffen und
/// gibt die korrespondierenden Ergebnisse zurück.
@injectable
class SingleGradeWatcherBloc
    extends Bloc<SingleGradeWatcherEvent, SingleGradeWatcherState> {
  final IGradeRepository _gradeRepository;

  SingleGradeWatcherBloc(this._gradeRepository)
      : super(SingleGradeWatcherState.initial(term: Term(1)));

  StreamSubscription<Either<GradeFailures, Grade>> _gradeStreamSubscription;

  @override
  Stream<SingleGradeWatcherState> mapEventToState(
    SingleGradeWatcherEvent event,
  ) async* {
    yield* event.map(
      ///[SingleGradeWatcherEvent.watchAllStarted] wurde ausgelöst.
      watchGradeStarted: (e) async* {
        ///Der Zustand wird auf laden geändet.
        yield SingleGradeWatcherState.loadInProgress(term: term);

        ///Ein Stream zur Datenbank wird hergestellt und
        ///die ermittelten Daten werden durch das Event [SingleGradeWatcherEvent.gradesReceived] weitergegeben.
        await _gradeStreamSubscription?.cancel();
        _gradeStreamSubscription = _gradeRepository.watchGrade(e.grade).listen(
            (grade) => add(SingleGradeWatcherEvent.gradesReceived(grade)));
      },

      ///[SingleGradeWatcherEvent.gradesReceived] wurde ausgelöst.
      gradesReceived: (e) async* {
        ///Bei den empfangen Daten wird geprüft ob diese gültig sind.
        ///Sollten sie Fehler enthalten wird der Zustand auf [SingleGradeWatcherState.loadFailure] gesetzt.
        ///Ansonsten wird der Zustand auf  SingleGradeWatcherState.loadSuccess gesetzt.
        yield e.failureOrGrade.fold(
          (f) =>
              SingleGradeWatcherState.loadFailure(gradeFailures: f, term: term),
          (grade) =>
              SingleGradeWatcherState.loadSuccess(grade: grade, term: term),
        );
      },

      ///[SingleGradeWatcherEvent.changeTerm] wurde ausgelöst.
      changeTerm: (e) async* {
        yield copyStateWithChangedTerm(
            e.maybeWhen(changeTerm: (t) => t, orElse: () => Term(1)));
      },
    );
  }

  ///[close] bereinigt den Speicher, kurz bevor die Klasse gelöscht wird.
  @override
  Future<void> close() async {
    await _gradeStreamSubscription.cancel();
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
  SingleGradeWatcherState copyStateWithChangedTerm(Term term) {
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
