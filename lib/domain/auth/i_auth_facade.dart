import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:grades/domain/auth/user.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

///Interface zur Kommunikation mit dem Authentifizierungsservice
abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
