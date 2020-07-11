import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/grade_failures.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/presentation/core/helpers/error_handling.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/widgets/subject_field.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/widgets/type_field.dart';

import 'file:///C:/Development/grades/app/grades/lib/presentation/core/style/app_colors.dart';

import '../../../../injection.dart';
import 'widgets/description_field.dart';
import 'widgets/floating_action_button/update_grade_floating_action_button.dart';
import 'widgets/grade_dialog_header.dart';

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
          errorBar<GradeFailures>(
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
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.6) : Colors.transparent,
        width: size.width,
        height: size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Speichern...',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GradeFormPageScaffold extends StatelessWidget {
  const GradeFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom < 40.0;
    return Container(
      color: AppColors.secondScaffold,
      child: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Scaffold(
            floatingActionButton:
                UpdateGradeFloatingActionButton(showFab: showFab),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            backgroundColor: AppColors.secondScaffold,
            body: BlocBuilder<GradeFormBloc, GradeFormState>(
              buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
              builder: (context, state) {
                return Form(
                  autovalidate: state.showErrorMessages,
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: <Widget>[
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: GradeDialogHeader(),
                      ),
                      const SliverToBoxAdapter(
                        child: DescriptionField(),
                      ),
                      const SliverToBoxAdapter(
                        child: TypeField(),
                      ),
                      const SliverToBoxAdapter(
                        child: SubjectField(),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
