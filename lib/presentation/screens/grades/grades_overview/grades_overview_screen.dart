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
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';
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
            ..add(GradeWatchAllEvent.watchAllStarted()),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: BlocProvider.of<AuthBloc>(context),
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
          orElse: () {},
        );
      },

      //TODO
      /*BlocListener<NoteActorBloc, NoteActorState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                FlushbarHelper.createError(
                  duration: const Duration(seconds: 5),
                  message: state.noteFailure.map(
                      // Use localized strings here in your apps
                      insufficientPermissions: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support.'),
                ).show(context);
              },
              orElse: () {},
            );
          },
        )*/
      child: BlocBuilder<SubjectWatcherBloc, SubjectWatcherState>(
        builder: (context, state) => Scaffold(
          backgroundColor: AppColors.scaffold,
          body: ListView(
            children: <Widget>[
              HeaderCard(),
              GradesOverviewBody(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.bloc<SubjectWatcherBloc>().state.maybeMap(
                  loadSuccess: (e) {
                    if (e.subjects.asList().isNotEmpty) {
                      ExtendedNavigator.of(context).pushNamed(
                          Routes.updateGradePage,
                          arguments: UpdateGradePageArguments(
                              subject: e.subjects.asList().first));
                    }
                  },
                  orElse: () {});
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
