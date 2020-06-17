part of 'auth_bloc.dart';

///Stellt die zwei möglichen Event durch benannte Konstruktoren dar.
@freezed
abstract class AuthEvent with _$AuthEvent {
  ///Prüfung ob der Benutzer eingeloggt ist wird angefordert.
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;

  ///Benutzer fordert abmelden an.
  const factory AuthEvent.signedOut() = SignedOut;
}
