import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/injection.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';
import 'package:grades/presentation/screens/grades/grades_overview/widgets/grades_overview_body.dart';

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
        condition: (oldDelegate, newDelegate) =>
            getTermFromState(oldDelegate).value !=
            getTermFromState(newDelegate).value,
        builder: (context, state) => Scaffold(
          appBar: AppBar(
              title: Text('Grades',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      letterSpacing: 2,
                      color: AppColors.inputBg,
                      fontWeight: FontWeight.w100,
                      fontSize: 30)),
              actions: [
                IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: () {
                    context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                ),
              ]),
          body: GradesOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ExtendedNavigator.of(context).pushNamed(
                Routes.updateSubjectPage,
              );
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
