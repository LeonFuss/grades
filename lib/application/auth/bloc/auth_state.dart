part of 'auth_bloc.dart';

///Möglichen Zustände durch benannten Konstruktor dargestellt.
@freezed
abstract class AuthState with _$AuthState {
  ///Anfangszustand, wenn noch kein Ergebnis vorliegt ob Benutzer authentifiziert ist oder nicht,
  /// bzw. noch keine Überprüfung angefordert wurde.
  const factory AuthState.initial() = Initial;

  ///Zustand wenn Benutzer authentifiziert ist.
  const factory AuthState.authenticated() = Authenticated;

  ///Zustand, wenn Benutzer nicht authentifiziert ist.
  const factory AuthState.unauthenticated() = Unauthenticated;
}
