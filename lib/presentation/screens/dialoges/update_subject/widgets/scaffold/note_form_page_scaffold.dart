import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/subject/form/bloc/subject_form_bloc.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../update_subject_widgets.dart';

class NoteFormPageScaffold extends HookWidget {
  const NoteFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subjectFormBloc = useProvider(subjectFormBlocProvider);

    return Scaffold(
      backgroundColor: AppColors.secondScaffold,
      appBar: AppBar(
        backgroundColor: AppColors.secondScaffold,
        iconTheme: IconThemeData(color: AppColors.accent),
        title: BlocBuilder<SubjectFormBloc, SubjectFormState>(
          bloc: subjectFormBloc,
          buildWhen: (p, c) => p.isEditing != c.isEditing,
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
                  subjectFormBloc.add(const SubjectFormEvent.saved());
                },
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<SubjectFormBloc, SubjectFormState>(
        bloc: subjectFormBloc,
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
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
