import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:grades/application/grades/watch_all/bloc/grade_watch_all_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/injection.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/update_grade_page.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/grades_overview_body.dart';

import 'widgets/header_card.dart';

class GradesOverviewScreen extends HookWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider<SubjectWatcherBloc>(
          create: (context) => getIt<SubjectWatcherBloc>()
            ..add(const SubjectWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<SubjectActorBloc>(
          create: (context) => getIt<SubjectActorBloc>(),
        ),
        BlocProvider<GradeActorBloc>(
          create: (context) => getIt<GradeActorBloc>(),
        ),
        BlocProvider<GradeWatchAllBloc>(
          create: (context) => getIt<GradeWatchAllBloc>()
            ..add(const GradeWatchAllEvent.watchAllStarted()),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final c = context;
    return BlocListener<AuthBloc, AuthState>(
      bloc: BlocProvider.of<AuthBloc>(context),
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
          orElse: () {},
        );
      },
      child: BlocBuilder<SubjectWatcherBloc, SubjectWatcherState>(
        builder: (context, state) => Scaffold(
          backgroundColor: AppColors.scaffold,
          body: RefreshIndicator(
            onRefresh: () {
              context
                  .bloc<GradeWatchAllBloc>()
                  .add(const GradeWatchAllEvent.watchAllStarted());
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
            transitionType: ContainerTransitionType.fade,
            closedElevation: 4,
            closedColor: Colors.transparent,
            closedShape: const CircleBorder(),
            closedBuilder: (BuildContext context, void Function() action) {
              return FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  context.bloc<SubjectWatcherBloc>().state.maybeMap(
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
              return c.bloc<SubjectWatcherBloc>().state.maybeMap(
                    loadSuccess: (e) {
                      if (e.subjects.asList().isNotEmpty) {
                        return UpdateGradePage(
                            subject: e.subjects.asList().first);
                      }
                      return Container();
                    },
                    orElse: () => Container(),
                  );
            },
          ),
        ),
      ),
    );
  }
}
