import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/auth/auth_failure.dart';
import 'package:grades/domain/auth/i_auth_facade.dart';
import 'package:grades/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

///Der [LoginBloc] höndelt alle Logik hinter dem [LoginScreen].
///Einloggen, neuen Benutzer erstellen oder mit Google einloggen.
@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthFacade _authFacade;

  LoginBloc(this._authFacade) : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      ///Event [LoginEvent.emailChanged] wurde ausgelöst.
      emailChanged: (e) async* {
        ///Der Zustand wird mit der neuen [EmailAddress] aktualisiert.
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },

      ///Event [LoginEvent.passwordChanged] wurde ausgelöst.
      passwordChanged: (e) async* {
        ///Der Zustand wird mit der neuen [Password] aktualisiert.
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },

      ///Event [LoginEvent.registerWithEmailAndPasswordPressed] wurde ausgelöst.
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },

      ///Event [LoginEvent.signInWithEmailAndPasswordPressed] wurde ausgelöst.
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },

      ///Event [LoginEvent.signInWithGooglePressed] wurde ausgelöst.
      signInWithGooglePressed: (e) async* {
        ///Zustand wird aktualisiert, damit ein Lade-Indikator dem Benutzer angezeigt werden kann.
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        ///Durch das [IAuthFacade] Interface wird das einloggen mit Google angefordert.
        final failureOrSuccess = await _authFacade.signInWithGoogle();

        ///Nach abschießen des Prozesses wird ein Fehler ausgegeben, oder der Benutzer wird eingeloggt.
        yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess));
      },
    );
  }

  ///Die Methode [_performActionOnAuthFacadeWithEmailAndPassword] überprüft, ob die Eingaben der Benutzer konform sind.
  ///Bei Fehlern wird der Zustand angepasst, damit diese dem Nutzer angezeigt werden.
  ///Sollten keine Fehler vorhanden sein, wird die als Parameter übergebene Funktion ausgeführt.
  ///Wenn die Aufgerufene Funktion nicht erfolgreich ausgeführt wird, wird der Zustand dementsprechend angepasst,
  ///damit der Benutzer über den Konkreten Fehler (falsches Passwort, etc.) informiert wird.
  Stream<LoginState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
