import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

///Klasse [AuthBloc] höndelt die Logic hinter dem [SplashScreen].
///Der Nutzer wird entweder auf den [LoginScreen] weitergeleitet, sollte der nicht identifiziert sein,
///oder auf den normalen [HomeScreen]
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override

  /// Wird jedes mal aufgerufen, wenn ein neues Event ([AuthEvent]) dem [AuthBloc] hinzugefügt wird.
  /// Die Methode reagiert auf das Eingegangene neue Event und den veränderten Zustand zurück.
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      ///Event [AuthEvent.authCheckRequested()] wurde aufgerufen
      authCheckRequested: (e) async* {
        ///Durch Interface [IAuthFacade] wird eine Nutzerüberprüfung durchgefürt.
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          ///Zustand wird auf unidentifiziert gesetzt.
          () => const AuthState.unauthenticated(),

          ///Zustand wird auf identifiziert gesetzt.
          (_) => const AuthState.authenticated(),
        );
      },
      //Event [AuthEvent.signOut()] wurde aufgerufen
      signedOut: (e) async* {
        ///Durch Interface [IAuthFacade] wird Nutzer abgemeldet.
        await _authFacade.signOut();

        ///Zustand wird auf unidentifiziert gesetzt.
        yield const AuthState.unauthenticated();
      },
    );
  }
}
