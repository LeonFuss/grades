import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/subject/form/bloc/subject_form_bloc.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';

import '../../../../injection.dart';
import 'widgets/name_field.dart';

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
                            "Das Fach konnte nicht bearbeitet werde. Sicher, dass es nicht von einem anderen Gerät gelöscht wurde?",
                        unexpected: (_) =>
                            'Ein unerwarteter Fehler ist aufgetreten. Bitte wenden Sie sich umgehend an den Support'),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.gradesOverviewScreen);
                },
              );
            },
          );
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

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.accent),
        title: BlocBuilder<SubjectFormBloc, SubjectFormState>(
          condition: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) => Text(
            state.isEditing ? 'Bearbeite ein Fach' : 'Erstelle ein Fach',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  context
                      .bloc<SubjectFormBloc>()
                      .add(const SubjectFormEvent.saved());
                },
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<SubjectFormBloc, SubjectFormState>(
        condition: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: const CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(child: NameField()),
              ],
            ),
          );
        },
      ),
    );
  }
}
