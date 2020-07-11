import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/subject/form/bloc/subject_form_bloc.dart';
import 'package:grades/presentation/core/style/app_colors.dart';

import '../update_subject_widgets.dart';

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondScaffold,
      appBar: AppBar(
        backgroundColor: AppColors.secondScaffold,
        iconTheme: IconThemeData(color: AppColors.accent),
        title: BlocBuilder<SubjectFormBloc, SubjectFormState>(
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