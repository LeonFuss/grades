import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:grades/application/grades/watcher/grade_watcher_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/injection.dart';
import 'package:grades/presentation/core/app_colors.dart';

import 'widgets/grades_detail_body.dart';

class GradesDetailScreen extends HookWidget implements AutoRouteWrapper {
  final Subject subject;

  const GradesDetailScreen(this.subject);

  @override
  Widget wrappedRoute(BuildContext context) {
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
        BlocProvider<SubjectWatcherBloc>(
          create: (context) => getIt<SubjectWatcherBloc>(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubjectWatcherBloc, SubjectWatcherState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(subject.name.getOrCrash(),
              style: Theme.of(context).textTheme.headline5.copyWith(
                  letterSpacing: 2,
                  color: AppColors.inputBg,
                  fontWeight: FontWeight.w100,
                  fontSize: 30)),
          actions: <Widget>[Text(subject.average.toString())],
        ),
        body: GradesDetailBody(
          subject: subject,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //TODO add
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
