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
import 'package:grades/application/subject/watcher/bloc/subject_watcher_bloc.dart';
import 'package:grades/domain/auth/i_auth_facade.dart';
import 'package:grades/domain/subjects/i_subject_repository.dart';
import 'package:grades/infrastructur/auth/firebase_auth_facade.dart';
import 'package:grades/infrastructur/core/firebase_injectable_module.dart';
import 'package:grades/infrastructur/grades/grade_repository.dart';
import 'package:grades/infrastructur/subjects/subject_repository.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<LoginBloc>(() => LoginBloc(g<IAuthFacade>()));
  g.registerFactory<SubjectWatcherBloc>(
      () => SubjectWatcherBloc(g<ISubjectRepository>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<GradeRepository>(
        () => GradeRepository(g<Firestore>()));
    g.registerLazySingleton<SubjectRepository>(
        () => SubjectRepository(g<Firestore>()));
    g.registerLazySingleton<FirebaseAuthFacade>(
        () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
