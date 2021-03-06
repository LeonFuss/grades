import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/grade/subjects/i_subject_repository.dart';
import 'package:grades/domain/grade/subjects/subject.dart';
import 'package:grades/domain/grade/subjects/subject_failures.dart';
import 'package:grades/domain/grade/subjects/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'subject_form_bloc.freezed.dart';
part 'subject_form_event.dart';
part 'subject_form_state.dart';

@injectable
class SubjectFormBloc extends Bloc<SubjectFormEvent, SubjectFormState> {
  final ISubjectRepository _subjectRepository;

  SubjectFormBloc(this._subjectRepository) : super(SubjectFormState.initial());

  @override
  Stream<SubjectFormState> mapEventToState(
    SubjectFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialSubjectOption.fold(
          () => SubjectFormState.initial(),
          (initialSubject) {
            return SubjectFormState.initial().copyWith(
              subject: initialSubject,
              isEditing: true,
            );
          },
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          subject: state.subject.copyWith(
            name: SubjectName(e.input),
          ),
        );
      },
      saved: (e) async* {
        Either<SubjectFailures, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.subject.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _subjectRepository.updateSubject(state.subject)
              : await _subjectRepository.createSubject(state.subject);
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
