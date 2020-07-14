import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/application/auth/login/bloc/login_bloc.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/application/grades/statistic/statistic_bloc.dart';
import 'package:grades/application/grades/watch_all/bloc/grade_watch_all_bloc.dart';
import 'package:grades/application/grades/watcher/grade_watcher_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/application/subject/form/bloc/subject_form_bloc.dart';
import 'package:grades/application/subject/singel_grade_watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/injection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Auth Providers

final Provider<AuthBloc> authBlocProvider = Provider(
    (ref) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()));

final Provider<LoginBloc> loginBlocProvider =
    Provider((ref) => getIt<LoginBloc>());

//Subject Providers

final Provider<SubjectWatcherBloc> subjectWatcherBlocProvider = Provider(
    (ref) => getIt<SubjectWatcherBloc>()
      ..add(const SubjectWatcherEvent.watchAllStarted()));

final Provider<SubjectActorBloc> subjectActorBlocProvider =
    Provider((ref) => getIt<SubjectActorBloc>());

final Provider<SubjectFormBloc> subjectFormBlocProvider =
    Provider((ref) => getIt<SubjectFormBloc>());

final Provider<SingleSubjectWatcherBloc> singleSubjectWatcherBlocProvider =
    Provider((ref) => getIt<SingleSubjectWatcherBloc>());

//Grade Providers

final Provider<GradeActorBloc> gradeActorBlocProvider =
    Provider((ref) => getIt<GradeActorBloc>());

final Provider<GradeWatcherBloc> gradeWatcherBlocProvider =
    Provider((ref) => getIt<GradeWatcherBloc>());

final Provider<GradeWatchAllBloc> gradeWatchAllBlocProvider =
    Provider((ref) => getIt<GradeWatchAllBloc>());

final Provider<GradeFormBloc> gradeFormBlocProvider =
    Provider((ref) => getIt<GradeFormBloc>());

final Provider<StatisticBloc> statisticBlocProvider = Provider((ref) =>
    getIt<StatisticBloc>()..add(const StatisticEvent.statisticStarted()));
