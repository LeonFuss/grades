import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/subject_overview_list.dart';

class GradesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubjectWatcherBloc, SubjectWatcherState>(
      builder: (BuildContext context, SubjectWatcherState state) {
        return state.when(
            initial: (term) => const SizedBox(),
            loadInProgress: (term) =>
                const Center(child: CircularProgressIndicator()),
            loadFailure: (failure, term) =>
                const Center(child: Text('Ein Fehler ist aufgetreten Fehler')),
            loadSuccess: (subjects, term) =>
                SubjectOverviewList(subjects: subjects));
      },
    );
  }
}
