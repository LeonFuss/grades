import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:grades/domain/subjects/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'statistic_bloc.freezed.dart';
part 'statistic_event.dart';
part 'statistic_state.dart';

///[GradeWatchAllBloc] verwaltet alle anfragen von der UI die die Noten betreffen und
/// gibt die korrespondierenden Ergebnisse zurück.
@injectable
class StatisticBloc extends Bloc<StatisticEvent, StatisticState> {
  final ISubjectRepository _subjectRepository;

  StatisticBloc(this._subjectRepository);

  StreamSubscription<Either<SubjectFailures, KtList<Grade>>>
      _gradesStreamSubscription;

  @override
  StatisticState get initialState => StatisticState.initial(term: Term(1));

  @override
  Stream<StatisticState> mapEventToState(
    StatisticEvent event,
  ) async* {
    yield* event.map(
      ///[GradeWatchAllEvent.watchAllStarted] wurde ausgelöst.
      statisticStarted: (e) async* {
        ///Der Zustand wird auf laden geändet.
        yield StatisticState.loadInProgress(term: term);

        ///Ein Stream zur Datenbank wird hergestellt und
        ///die ermittelten Daten werden durch das Event [GradeWatchAllEvent.gradesReceived] weitergegeben.
        await _gradesStreamSubscription?.cancel();
        _gradesStreamSubscription = _subjectRepository
            .watchAllGrades(term)
            .listen((grades) => add(StatisticEvent.gradesReceived(
                  grades,
                )));
      },

      ///[GradeWatchAllEvent.gradesReceived] wurde ausgelöst.
      gradesReceived: (e) async* {
        ///Bei den empfangen Daten wird geprüft ob diese gültig sind.
        ///Sollten sie Fehler enthalten wird der Zustand auf [GradeWatchAllState.loadFailure] gesetzt.
        ///Ansonsten wird der Zustand auf  GradeWatchAllState.loadSuccess gesetzt.

        yield e.failureOrGrades
            .fold((f) => StatisticState.loadFailure(failures: f, term: term),
                (grades) {
          final List<Grade> sortedGrades = grades.asList().toList();
          sortedGrades.sort((a, b) => a.creationTime.compareTo(b.creationTime));
          final oralGrades = sortedGrades
              .where((grade) => grade.type.getOrCrash() == "Mündlich")
              .toList();
          final writtenGrades = sortedGrades
              .where((grade) => grade.type.getOrCrash() == "Schriftlich")
              .toList();

          return StatisticState.loadSuccess(
              gradeAverage: Average.fromGrades(grades.asList()).toString(),
              grades: sortedGrades.toImmutableList(),
              oralGrades: oralGrades.toImmutableList(),
              writtenGrades: writtenGrades.toImmutableList(),
              term: term,
              worseSubjectAverage: '--',
              bestSubject: some(Subject.empty()),
              bestSubjectAverage: '--',
              bestSubjectName: 'Deutsch',
              worseSubject: none(),
              worseSubjectName: '--');
        });
      },

      ///[GradeWatchAllEvent.changeTerm] wurde ausgelöst.
      changeTerm: (e) async* {
        yield copyStateWithChangedTerm(
            e.maybeWhen(changeTerm: (t) => t, orElse: () => Term(1)));
      },
    );
  }

  ///[close] bereinigt den Speicher, kurz bevor die Klasse gelöscht wird.
  @override
  Future<void> close() async {
    await _gradesStreamSubscription.cancel();
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
  StatisticState copyStateWithChangedTerm(Term term) {
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
