import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grades/domain/auth/auth_failure.dart';
import 'package:grades/domain/auth/i_auth_facade.dart';
import 'package:grades/domain/auth/user.dart';
import 'package:grades/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'firebase_user_mapper.dart';

///Implementierung des Interfaces [IAuthFacade].
@prod
@lazySingleton
@Injectable(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  ///Gibt den aktuell angemeldeten Benutzer zurück.
  ///Der Benutzer wird dabei in die [User] Entität transformiert.
  ///Solle niemand angemeldet sind, wird [Option] mit Wert [None] zurückgegeben.
  @override
  Future<Option<User>> getSignedInUser() async => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  ///Registriert einen neuen Benutzer bei Firebase.
  ///Bei erfolgreichem Abschließen wird [Either] mit Wer [Unit] zurückgegeben.
  ///Sollte ein Fehler auftreten, wird dieser in einen [AuthFailure] transformiert um [Exception] und [Error],
  /// die einen Absturz der App mit sich tragen, auszuschließen.
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr =
        emailAddress.value.getOrElse(() => 'UNGÜLTIGE EMAIL');
    final passwordStr = password.value.getOrElse(() => 'UNGÜLTIGES PASSWORD');
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  ///Meldet einen Benutzer bei Firebase an.
  ///Bei erfolgreichem Abschließen wird [Either] mit Wer [Unit] zurückgegeben.
  ///Sollte ein Fehler auftreten, wird dieser in einen [AuthFailure] transformiert um [Exception] und [Error],
  /// die einen Absturz der App mit sich tragen, auszuschließen.
  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr =
        emailAddress.value.getOrElse(() => 'UNGÜLTIGE EMAIL');
    final passwordStr = password.value.getOrElse(() => 'UNGÜLTIGES PASSWORD');
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  ///Meldet einen Benutzer über Google bei bei Firebase an.
  ///Bei erfolgreichem Abschließen wird [Either] mit Wer [Unit] zurückgegeben.
  ///Sollte ein Fehler auftreten, wird dieser in einen [AuthFailure] transformiert um [Exception] und [Error],
  /// die einen Absturz der App mit sich tragen, auszuschließen.
  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  ///Meldet den Benutzer von Firebase ab.
  ///Sollte der Benutzer sich über Google angemeldet haben, wird er auch dort ausgeloggt.
  @override
  Future<void> signOut() async {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }
}
