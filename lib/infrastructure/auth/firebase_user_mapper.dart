import 'package:firebase_auth/firebase_auth.dart';
import 'package:grades/domain/auth/user.dart';
import 'package:grades/domain/auth/value_objects.dart';
import 'package:grades/domain/core/value_objects.dart';

///Die Erweiterung fügt die Methode [toDomain] der Klasse [FirebaseUser] hinzu.
///Die Nutzung dieses Syntaxes ist notwendig, da [FirebaseUser] aus einen externen Package stammt
///und somit Veränderungen and dieser nicht möglich sind.
extension FirebaseUserDomainX on FirebaseUser {
  ///[toDomain] transformiert einen [FirebaseUser] in die Entität [User].
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      name: StringSingleLine(displayName ?? email.split('@').first),
      emailAddress: EmailAddress(email),
    );
  }
}
