import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:grades/application/grades/watcher/grade_watcher_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/application/subject/singel_grade_watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/injection.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/update_grade_page.dart';

import 'widgets/grade_detail_item.dart';
import 'widgets/grade_type_overview.dart';
import 'widgets/subject_detail_header.dart';

class GradesDetailScreen extends HookWidget {
  final Subject subject;

  const GradesDetailScreen(this.subject);

  Widget wrappedRoute(BuildContext context, Widget child) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GradeWatcherBloc>(
          create: (context) => getIt<GradeWatcherBloc>()
            ..add(GradeWatcherEvent.watchSubjectGradesStarted(subject)),
        ),
        BlocProvider<SubjectActorBloc>(
          create: (context) => getIt<SubjectActorBloc>(),
        ),
        BlocProvider<GradeActorBloc>(
          create: (context) => getIt<GradeActorBloc>(),
        ),
        BlocProvider<SingleSubjectWatcherBloc>(
          create: (context) => getIt<SingleSubjectWatcherBloc>()
            ..add(SingleSubjectWatcherEvent.watchSubjectStarted(subject)),
        ),
      ],
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return wrappedRoute(
      context,
      BlocBuilder<SingleSubjectWatcherBloc, SingleSubjectWatcherState>(
          builder: (context, subjectState) {
        return BlocBuilder<GradeWatcherBloc, GradeWatcherState>(
          builder: (context, state) => Scaffold(
            body: Container(
              color: AppColors.scaffold,
              child: SafeArea(
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverPersistentHeader(
                        delegate:
                            SubjectDetailHeader(context, subject: subject)),
                    SliverToBoxAdapter(
                      child: GradeTypeOverview(
                        type: GradeType.schriftlich(),
                        subject: subjectState.maybeWhen(
                          loadSuccess: (s, t) => s,
                          orElse: () => Subject.empty(),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return state.maybeMap(
                            loadSuccess: (s) => Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: GradeDetailItem(
                                    grade: s.writtenGrades[index],
                                  ),
                                ),
                            loadFailure: (value) => Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(value.gradeFailures.toString()),
                                ),
                            orElse: () => const Center(
                                child: CircularProgressIndicator()));
                      },
                          childCount: state.maybeWhen(
                              loadSuccess:
                                  (grades, oralGrades, writtenGrads, term) =>
                                      writtenGrads.size,
                              orElse: () => 1)),
                    ),
                    SliverToBoxAdapter(
                      child: GradeTypeOverview(
                        type: GradeType.muendlich(),
                        subject: subjectState.maybeWhen(
                          loadSuccess: (s, t) => s,
                          orElse: () => Subject.empty(),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return state.maybeMap(
                            loadSuccess: (s) => Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: GradeDetailItem(
                                    grade: s.oralGrades[index],
                                  ),
                                ),
                            loadFailure: (value) => Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(value.gradeFailures.toString()),
                                ),
                            orElse: () => const Center(
                                child: CircularProgressIndicator()));
                      },
                          childCount: state.maybeWhen(
                              loadSuccess:
                                  (grades, oralGrades, writtenGrads, term) =>
                                      oralGrades.size,
                              orElse: () => 1)),
                    ),
                    const SliverPadding(
                      padding: EdgeInsets.all(60),
                    )
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRoutes.fadeThrough(
                    () => UpdateGradePage(
                      subject: subject,
                    ),
                  ),
                );
              },
              child: Icon(Icons.add),
            ),
          ),
        );
      }),
    );
  }
}
