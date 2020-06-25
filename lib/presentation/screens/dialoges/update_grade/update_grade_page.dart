import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/widgets/description_field.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/widgets/grade_dialog_header.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/widgets/type_field.dart';

import '../../../../injection.dart';

class UpdateGradePage extends StatelessWidget {
  final Grade grade;
  final Subject subject;

  const UpdateGradePage({Key key, this.grade, @required this.subject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GradeFormBloc>()
        ..add(GradeFormEvent.initialized(optionOf(grade), subject)),
      child: BlocConsumer<GradeFormBloc, GradeFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failure.map(
                        // Use localized strings here in your apps
                        insufficientPermissions: (_) =>
                            'Unzureichende Berechtigungen',
                        unableToUpdate: (_) =>
                            "Die Note konnte nicht bearbeitet werde. Sicher, dass es nicht von einem anderen Gerät gelöscht wurde?",
                        unexpected: (_) =>
                            'Ein unerwarteter Fehler ist aufgetreten. Bitte wenden Sie sich umgehend an den Support'),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.gradesOverviewScreen ||
                      route.settings.name == Routes.gradesDetailScreen);
                },
              );
            },
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
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.6) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
        child: Scaffold(
          floatingActionButton: TweenAnimationBuilder<double>(
            duration: const Duration(microseconds: 1),
            tween: showFab ? Tween(begin: 0, end: 1) : Tween(begin: 1, end: 0),
            builder: (context, value, child) {
              return AnimatedOpacity(
                opacity: value,
                duration: const Duration(microseconds: 1),
                child: Transform.scale(
                  scale: value,
                  child: child,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: RaisedButton(
                color: AppColors.accent,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32))),
                onPressed: () => context
                    .bloc<GradeFormBloc>()
                    .add(const GradeFormEvent.saved()),
                child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Speichern",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: AppColors.bottomBar),
                      ),
                    )),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          backgroundColor: AppColors.secondScaffold,
          body: BlocBuilder<GradeFormBloc, GradeFormState>(
            condition: (p, c) => p.showErrorMessages != c.showErrorMessages,
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
                      child: TypeField(),
                    ),
                    const SliverToBoxAdapter(
                      child: DescriptionField(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
