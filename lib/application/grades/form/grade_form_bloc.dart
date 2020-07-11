import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'grade_form_bloc.freezed.dart';
part 'grade_form_event.dart';
part 'grade_form_state.dart';

@injectable
class GradeFormBloc extends Bloc<GradeFormEvent, GradeFormState> {
  final IGradeRepository _gradeRepository;
  final ISubjectRepository _subjectRepository;

  GradeFormBloc(this._gradeRepository, this._subjectRepository)
      : super(GradeFormState.initial());

  @override
  Stream<GradeFormState> mapEventToState(
    GradeFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialGradeOption.fold(
          () => state.copyWith(
            grade: e.subject.fold(
              () => state.grade,
              (a) => state.grade.copyWith(subjectId: a.id),
            ),
          ),
          (initialGrade) {
            return state.copyWith(
              grade: initialGrade,
              isEditing: true,
            );
          },
        );
        final subjects = await _subjectRepository.getAll(state.grade.term);
        yield subjects.fold(
            (l) => state,
            (r) => e.subject.fold(
                () => state.copyWith(
                    subjects: r,
                    grade: r.isNotEmpty() && e.initialGradeOption.isNone()
                        ? state.grade.copyWith(subjectId: r.asList().first.id)
                        : state.grade),
                (a) => state.copyWith(
                      subjects: r,
                    )));
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          grade: state.grade.copyWith(
            description: GradeDescription(e.input),
          ),
        );
      },
      gradeValueChanged: (e) async* {
        yield state.copyWith(
          grade: state.grade.copyWith(
            value: GradeValue.fromString(e.gradeValue),
          ),
        );
      },
      gradeTypeChanged: (e) async* {
        yield state.copyWith(
          grade: state.grade.copyWith(
            type: GradeType(e.type),
          ),
        );
      },
      subjectChanged: (e) async* {
        yield state.copyWith(
          grade: state.grade.copyWith(
            subjectId: UniqueId.fromUniqueString(e.subjectId),
          ),
        );
      },
      saved: (e) async* {
        Either<GradeFailures, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.grade.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _gradeRepository.update(state.grade)
              : await _gradeRepository.create(state.grade);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
