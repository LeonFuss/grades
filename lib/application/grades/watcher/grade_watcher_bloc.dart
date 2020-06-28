import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'grade_watcher_bloc.freezed.dart';
part 'grade_watcher_event.dart';
part 'grade_watcher_state.dart';

///[GradeWatcherBloc] verwaltet alle anfragen von der UI die die Noten betreffen und
/// gibt die korrespondierenden Ergebnisse zurück.
@injectable
class GradeWatcherBloc extends Bloc<GradeWatcherEvent, GradeWatcherState> {
  final IGradeRepository _gradeRepository;
  final SubjectActorBloc _actorBloc;

  GradeWatcherBloc(this._gradeRepository, this._actorBloc);

  StreamSubscription<Either<GradeFailures, KtList<Grade>>>
      _gradeStreamSubscription;

  @override
  GradeWatcherState get initialState =>
      GradeWatcherState.initial(term: Term(1));

  @override
  Stream<GradeWatcherState> mapEventToState(
    GradeWatcherEvent event,
  ) async* {
    yield* event.map(
      ///[GradeWatcherEvent.watchAllStarted] wurde ausgelöst.
      watchSubjectGradesStarted: (e) async* {
        ///Der Zustand wird auf laden geändet.
        yield GradeWatcherState.loadInProgress(term: term);

        ///Ein Stream zur Datenbank wird hergestellt und
        ///die ermittelten Daten werden durch das Event [GradeWatcherEvent.gradesReceived] weitergegeben.
        await _gradeStreamSubscription?.cancel();
        _gradeStreamSubscription = _gradeRepository
            .watchSubjectGrades(e.subject)
            .listen((grades) =>
                add(GradeWatcherEvent.gradesReceived(grades, e.subject)));
      },

      ///[GradeWatcherEvent.gradesReceived] wurde ausgelöst.
      gradesReceived: (e) async* {
        ///Bei den empfangen Daten wird geprüft ob diese gültig sind.
        ///Sollten sie Fehler enthalten wird der Zustand auf [GradeWatcherState.loadFailure] gesetzt.
        ///Ansonsten wird der Zustand auf  GradeWatcherState.loadSuccess gesetzt.

        yield e.failureOrGrades.fold(
            (f) => GradeWatcherState.loadFailure(gradeFailures: f, term: term),
            (grades) {
          final oralGrades =
              grades.filter((grade) => grade.type.getOrCrash() == "Mündlich");
          final writtenGrades = grades
              .filter((grade) => grade.type.getOrCrash() == "Schriftlich");

          final oralAverage = Average.fromGrades(oralGrades.asList());
          final writtenAverage = Average.fromGrades(writtenGrades.asList());
          final average =
              Average.fromOralAndWrittenAverage(oralAverage, writtenAverage);
          _actorBloc.add(
            SubjectActorEvent.update(
              e.subject.copyWith(
                average: average,
                writtenAverage: writtenAverage,
                oralAverage: oralAverage,
              ),
            ),
          );
          return GradeWatcherState.loadSuccess(
            grades: grades,
            oralGrades: oralGrades,
            writtenGrades: writtenGrades,
            term: term,
          );
        });
      },

      ///[GradeWatcherEvent.changeTerm] wurde ausgelöst.
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
  GradeWatcherState copyStateWithChangedTerm(Term term) {
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
