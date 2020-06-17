part of 'login_bloc.dart';

///Stellt die möglichen Events mit benannten Konstruktoren dar.
@freezed
abstract class LoginEvent with _$LoginEvent {
  ///eingegebene Email-Adresse verändert sich.
  const factory LoginEvent.emailChanged(String emailStr) = EmailChanged;

  ///eingegebenes Passwort verändert sich.
  const factory LoginEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  ///registrieren mit Email und Passwort wird angefordert.
  const factory LoginEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;

  ///anmelden mit Email und Passwort wird angefordert.
  const factory LoginEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;

  ///anmelden mit Google wird angefordert.
  const factory LoginEvent.signInWithGooglePressed() = SignInWithGooglePressed;
}
