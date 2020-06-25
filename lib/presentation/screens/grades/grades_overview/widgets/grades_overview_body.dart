import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/subject_list.dart';

class GradesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text(
            'Fächer',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: AppColors.fontColor),
          ),
        ),
        BlocBuilder<SubjectWatcherBloc, SubjectWatcherState>(
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
