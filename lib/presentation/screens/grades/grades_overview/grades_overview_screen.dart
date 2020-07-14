import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/application/grades/statistic/statistic_bloc.dart';
import 'package:grades/application/grades/watch_all/bloc/grade_watch_all_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/update_grade_page.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/grades_overview_body.dart';
import 'package:grades/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/header_card.dart';

class GradesOverviewScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final subjectWatcherBloc = useProvider(subjectWatcherBlocProvider);
    final authBloc = useProvider(authBlocProvider);
    final gradeWatchAllBloc = useProvider(gradeWatchAllBlocProvider);
    useProvider(statisticBlocProvider)
        .add(const StatisticEvent.statisticStarted());

    return BlocListener<AuthBloc, AuthState>(
      bloc: authBloc,
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => Navigator.of(context)
              .pushReplacement(PageRoutes.sharedAxis(() => SignInScreen())),
          orElse: () {},
        );
      },
      child: BlocBuilder<SubjectWatcherBloc, SubjectWatcherState>(
        bloc: subjectWatcherBloc,
        builder: (context, state) => Scaffold(
          backgroundColor: AppColors.scaffold,
          body: RefreshIndicator(
            onRefresh: () {
              gradeWatchAllBloc.add(const GradeWatchAllEvent.watchAllStarted());
              return Future.delayed(const Duration(milliseconds: 2));
            },
            child: ListView(
              children: <Widget>[
                HeaderCard(),
                GradesOverviewBody(),
              ],
            ),
          ),
          floatingActionButton: OpenContainer(
            transitionDuration: const Duration(milliseconds: 500),
            closedElevation: 4,
            closedColor: Colors.transparent,
            closedShape: const CircleBorder(),
            closedBuilder: (BuildContext context, void Function() action) {
              return FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  subjectWatcherBloc.state.maybeMap(
                    loadSuccess: (e) {
                      if (e.subjects.asList().isNotEmpty) {
                        action();
                      }
                      return false;
                    },
                    orElse: () => false,
                  );
                },
                child: Icon(Icons.add),
              );
            },
            tappable: false,
            openBuilder: (BuildContext context,
                void Function({Object returnValue}) action) {
              return subjectWatcherBloc.state.maybeMap(
                loadSuccess: (e) {
                  if (e.subjects.asList().isNotEmpty) {
                    return UpdateGradePage(subject: e.subjects.asList().first);
                  }
                  return Container();
                },
                orElse: () => Container(
                  color: AppColors.red,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
