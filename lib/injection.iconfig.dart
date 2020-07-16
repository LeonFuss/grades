// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:grades/infrastructure/sql_database/app_database.dart';
import 'package:grades/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grades/infrastructure/auth/firebase_auth_facade.dart';
import 'package:grades/domain/auth/i_auth_facade.dart';
import 'package:grades/infrastructure/grades/grade_repository.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:grades/infrastructure/sql_database/grade_dao.dart';
import 'package:grades/infrastructure/sql_database/subject_dao.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/infrastructure/subjects/subject_repository.dart';
import 'package:grades/infrastructure/inital_startup/initial_startup.dart';
import 'package:grades/application/auth/login/bloc/login_bloc.dart';
import 'package:grades/application/grade/watcher/grade_watcher_bloc.dart';
import 'package:grades/application/subject/singel_grade_watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/application/grades/statistic/statistic_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/application/subject/form/bloc/subject_form_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/application/grades/watch_all/bloc/grade_watch_all_bloc.dart';
import 'package:grades/application/grades/watcher/grade_watcher_bloc.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<LoginBloc>(() => LoginBloc(g<IAuthFacade>()));
  g.registerFactory<SingleGradeWatcherBloc>(
      () => SingleGradeWatcherBloc(g<IGradeRepository>()));
  g.registerFactory<SingleSubjectWatcherBloc>(
      () => SingleSubjectWatcherBloc(g<ISubjectRepository>()));
  g.registerFactory<StatisticBloc>(() => StatisticBloc(g<IGradeRepository>()));
  g.registerFactory<SubjectActorBloc>(
      () => SubjectActorBloc(g<ISubjectRepository>(), g<IGradeRepository>()));
  g.registerFactory<SubjectFormBloc>(
      () => SubjectFormBloc(g<ISubjectRepository>()));
  g.registerFactory<SubjectWatcherBloc>(
      () => SubjectWatcherBloc(g<ISubjectRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<GradeFormBloc>(
      () => GradeFormBloc(g<IGradeRepository>(), g<ISubjectRepository>()));
  g.registerFactory<GradeWatchAllBloc>(
      () => GradeWatchAllBloc(g<IGradeRepository>()));
  g.registerFactory<GradeWatcherBloc>(
      () => GradeWatcherBloc(g<IGradeRepository>(), g<SubjectActorBloc>()));
  g.registerFactory<GradeActorBloc>(
      () => GradeActorBloc(g<IGradeRepository>(), g<GradeWatchAllBloc>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<IAuthFacade>(
        () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
    g.registerFactory<IGradeRepository>(() => GradeDAO(g<AppDatabase>()));
    g.registerFactory<ISubjectRepository>(() => SubjectDAO(g<AppDatabase>()));
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerFactory<IGradeRepository>(() => GradeRepository(g<Firestore>()));
    g.registerFactory<ISubjectRepository>(
        () => SubjectRepository(g<Firestore>()));
  }

  //Eager singletons must be registered in the right order
  g.registerSingleton<AppDatabase>(AppDatabase());
  g.registerSingleton<InitialStartup>(InitialStartup());
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
