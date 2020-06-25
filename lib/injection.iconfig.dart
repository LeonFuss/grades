// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/application/auth/login/bloc/login_bloc.dart';
import 'package:grades/application/grade/watcher/grade_watcher_bloc.dart';
import 'package:grades/application/grades/actor/grade_actor_bloc.dart';
import 'package:grades/application/grades/form/grade_form_bloc.dart';
import 'package:grades/application/grades/watcher/grade_watcher_bloc.dart';
import 'package:grades/application/subject/actor/bloc/subject_actor_bloc.dart';
import 'package:grades/application/subject/form/bloc/subject_form_bloc.dart';
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/domain/auth/i_auth_facade.dart';
import 'package:grades/domain/grades/i_grade_repository.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/infrastructur/auth/firebase_auth_facade.dart';
import 'package:grades/infrastructur/core/firebase_injectable_module.dart';
import 'package:grades/infrastructur/grades/grade_repository.dart';
import 'package:grades/infrastructur/subjects/subject_repository.dart';

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
  g.registerFactory<SubjectActorBloc>(
      () => SubjectActorBloc(g<ISubjectRepository>()));
  g.registerFactory<SubjectFormBloc>(
      () => SubjectFormBloc(g<ISubjectRepository>()));
  g.registerFactory<SubjectWatcherBloc>(
      () => SubjectWatcherBloc(g<ISubjectRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<GradeActorBloc>(
      () => GradeActorBloc(g<IGradeRepository>()));
  g.registerFactory<GradeFormBloc>(
      () => GradeFormBloc(g<IGradeRepository>(), g<ISubjectRepository>()));
  g.registerFactory<GradeWatcherBloc>(
      () => GradeWatcherBloc(g<IGradeRepository>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<IAuthFacade>(
        () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
    g.registerFactory<IGradeRepository>(() => GradeRepository(g<Firestore>()));
    g.registerFactory<ISubjectRepository>(
        () => SubjectRepository(g<Firestore>()));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
