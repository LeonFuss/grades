import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/subject/form/bloc/subject_form_bloc.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/subject_failures.dart';
import 'package:grades/presentation/core/helpers/error_handling.dart';
import 'package:grades/presentation/core/shared/saving_in_progress_overlay.dart';

import '../../../../injection.dart';
import 'widgets/update_subject_widgets.dart';

class UpdateSubjectPage extends StatelessWidget {
  final String title;
  final Function(Subject subject) onSubmit;
  final Subject subject;

  const UpdateSubjectPage({Key key, this.title, this.onSubmit, this.subject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SubjectFormBloc>()
        ..add(SubjectFormEvent.initialized(optionOf(subject))),
      child: BlocConsumer<SubjectFormBloc, SubjectFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          buildErrorMessages(context, state);
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const NoteFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }

  void buildErrorMessages(BuildContext context, SubjectFormState state) {
    return errorBar<SubjectFailures>(
      context,
      state.saveFailureOrSuccessOption,
      (failure) => failure.map(
          insufficientPermissions: (_) => 'Unzureichende Berechtigungen',
          unableToUpdate: (_) =>
              "Das Fach konnte nicht bearbeitet werde. Sicher, dass es nicht von einem anderen Gerät gelöscht wurde?",
          unexpected: (_) =>
              'Ein unerwarteter Fehler ist aufgetreten. Bitte wenden Sie sich umgehend an den Support'),
    );
  }
}
