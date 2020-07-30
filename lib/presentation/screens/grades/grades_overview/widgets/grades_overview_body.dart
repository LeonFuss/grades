import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/core/style/text_style.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/subject_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GradesOverviewBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final subjectWatcherBloc = useProvider(subjectWatcherBlocProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text(
            'Fächer',
            style: TextStyles.headline.c(AppColors.fontColor),
          ),
        ),
        BlocBuilder<SubjectWatcherBloc, SubjectWatcherState>(
          cubit: subjectWatcherBloc,
          builder: (BuildContext context, SubjectWatcherState state) {
            return state.when(
                initial: (term) => const SizedBox(),
                loadInProgress: (term) =>
                    const Center(child: CircularProgressIndicator()),
                loadFailure: (failure, term) => const Center(
                    child: Text('Ein Fehler ist aufgetreten Fehler')),
                loadSuccess: (subjects, term) => SubjectList(subjects));
          },
        ),
      ],
    );
  }
}
