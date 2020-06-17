import 'package:firebase_auth/firebase_auth.dart';
import 'package:grades/domain/auth/user.dart';
import 'package:grades/domain/auth/value_objects.dart';
import 'package:grades/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      name: StringSingleLine(displayName ?? email.split('@').first),
      emailAddress: EmailAddress(email),
    );
  }
}
