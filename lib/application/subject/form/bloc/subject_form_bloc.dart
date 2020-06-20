import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:grades/domain/subjects/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'subject_form_bloc.freezed.dart';
part 'subject_form_event.dart';
part 'subject_form_state.dart';

@injectable
class SubjectFormBloc extends Bloc<SubjectFormEvent, SubjectFormState> {
  final ISubjectRepository _subjectRepository;

  SubjectFormBloc(this._subjectRepository);

  @override
  SubjectFormState get initialState => SubjectFormState.initial();

  @override
  Stream<SubjectFormState> mapEventToState(
    SubjectFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialSubjectOption.fold(
          () => state,
          (initialSubject) {
            return state.copyWith(
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
              ? await _subjectRepository.update(state.subject)
              : await _subjectRepository.create(state.subject);
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
