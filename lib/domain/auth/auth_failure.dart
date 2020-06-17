import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

///[AuthFailure] beschreibt alle möglichen Fehler die bei der Authentifizierung auftreten können
///in Form von benannten Konstruktoren
@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  const factory AuthFailure.serverError() = ServerError;

  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
