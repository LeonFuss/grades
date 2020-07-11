import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/injection.dart';
import 'package:grades/presentation/core/helpers/error_handling.dart';

import 'widgets/update_grade_widgets.dart';

class UpdateGradePage extends StatelessWidget {
  final Grade grade;
  final Subject subject;

  const UpdateGradePage({Key key, this.grade, this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GradeFormBloc>()
        ..add(GradeFormEvent.initialized(optionOf(grade), optionOf(subject))),
      child: BlocConsumer<GradeFormBloc, GradeFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          buildErrorMessages(context, state);
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const GradeFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }

  void buildErrorMessages(BuildContext context, GradeFormState state) {
    return errorBar<GradeFailures>(
          context,
          state.saveFailureOrSuccessOption,
          (failure) => failure.map(
              termNotValid: (_) =>
                  "Ein interner Fehler ist aufgetreten. Bitte wenden Sie sich umgehend an den Support",
              insufficientPermissions: (_) => 'Unzureichende Berechtigungen',
              unableToUpdate: (_) =>
                  "Die Note konnte nicht bearbeitet werde. Sicher, dass es nicht von einem anderen Gerät gelöscht wurde?",
              unexpected: (_) =>
                  'Ein unerwarteter Fehler ist aufgetreten. Bitte wenden Sie sich umgehend an den Support'),
        );
  }
}
