import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/application/grades/watch_all/bloc/grade_watch_all_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:injectable/injectable.dart';

part 'grade_actor_bloc.freezed.dart';
part 'grade_actor_event.dart';
part 'grade_actor_state.dart';

@injectable
class GradeActorBloc extends Bloc<GradeActorEvent, GradeActorState> {
  final IGradeRepository _gradeRepository;
  final GradeWatchAllBloc _gradeWatchAllBloc;

  GradeActorBloc(this._gradeRepository, this._gradeWatchAllBloc)
      : super(const GradeActorState.initial());

  @override
  Stream<GradeActorState> mapEventToState(
    GradeActorEvent event,
  ) async* {
    yield const GradeActorState.actionInProgress();
    final possibleFailure = await event.when(
      deleted: (grade) => _gradeRepository.deleteGrade(event.grade),
      create: (grade) => _gradeRepository.createGrade(event.grade),
      update: (grade) => _gradeRepository.updateGrade(event.grade),
    );

    _gradeWatchAllBloc.add(const GradeWatchAllEvent.watchAllStarted());

    yield possibleFailure.fold(
      (f) => GradeActorState.failure(f),
      (_) => const GradeActorState.success(),
    );
  }
}
