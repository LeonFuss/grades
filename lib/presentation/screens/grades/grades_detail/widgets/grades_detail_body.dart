import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/grades/watcher/grade_watcher_bloc.dart';
import 'package:grades/domain/subjects/subject.dart';

import 'grades_detail_list.dart';

class GradesDetailBody extends StatelessWidget {
  final Subject subject;

  const GradesDetailBody({Key key, @required this.subject}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GradeWatcherBloc, GradeWatcherState>(
      builder: (BuildContext context, GradeWatcherState state) {
        return state.when(
            initial: (term) => const SizedBox(),
            loadInProgress: (term) =>
                const Center(child: CircularProgressIndicator()),
            loadFailure: (failure, term) =>
                const Center(child: Text('Ein Fehler ist aufgetreten Fehler')),
            loadSuccess: (grades, oralGrades, writtenGrads, term) =>
                GradesDetailList(
                  oralGrades: oralGrades,
                  writtenGrades: writtenGrads,
                  subject: subject,
                ));
      },
    );
  }
}
