import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'subject_actor_bloc.freezed.dart';
part 'subject_actor_event.dart';
part 'subject_actor_state.dart';

@injectable
class SubjectActorBloc extends Bloc<SubjectActorEvent, SubjectActorState> {
  final ISubjectRepository _subjectRepository;
  final IGradeRepository _gradeRepository;

  SubjectActorBloc(
    this._subjectRepository,
    this._gradeRepository,
  ) : super(const SubjectActorState.initial());

  @override
  Stream<SubjectActorState> mapEventToState(
    SubjectActorEvent event,
  ) async* {
    yield const SubjectActorState.actionInProgress();
    final possibleFailure = await event.when(
      deleted: (subject) {
        _subjectRepository.deleteSubject(event.subject);
        _gradeRepository.deleteAllSubjectGrades(event.subject);
      },
      create: (subject) => _subjectRepository.createSubject(event.subject),
      update: (subject) => _subjectRepository.updateSubject(event.subject),
    );

    yield possibleFailure.fold(
      (f) => SubjectActorState.failure(f),
      (_) => const SubjectActorState.success(),
    );
  }
}
