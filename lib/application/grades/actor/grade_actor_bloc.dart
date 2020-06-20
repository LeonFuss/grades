import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  GradeActorBloc(this._gradeRepository);

  @override
  GradeActorState get initialState => const GradeActorState.initial();

  @override
  Stream<GradeActorState> mapEventToState(
    GradeActorEvent event,
  ) async* {
    yield const GradeActorState.actionInProgress();
    final possibleFailure = await event.when(
      deleted: (grade) => _gradeRepository.delete(event.grade),
      create: (grade) => _gradeRepository.create(event.grade),
      update: (grade) => _gradeRepository.update(event.grade),
    );

    yield possibleFailure.fold(
      (f) => GradeActorState.failure(f),
      (_) => const GradeActorState.success(),
    );
  }
}
