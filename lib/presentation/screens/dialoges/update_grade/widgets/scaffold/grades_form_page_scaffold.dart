import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sized_context/sized_context.dart';

import '../update_grade_widgets.dart';

class GradeFormPageScaffold extends HookWidget {
  const GradeFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradeFormBloc = useProvider(gradeFormBlocProvider);
    final bool showFab = context.mq.viewInsets.bottom < 40;

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
              bloc: gradeFormBloc,
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
