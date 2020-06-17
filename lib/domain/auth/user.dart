import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/auth/value_objects.dart';
import 'package:grades/domain/core/entity.dart';
import 'package:grades/domain/core/failures.dart';
import 'package:grades/domain/core/value_objects.dart';

part 'user.freezed.dart';

///[User] ist eine Entität, die den Benutzer beschreibt. Sie beinhaltet nur Wertobjekte die sich selbst validieren.
@freezed
abstract class User with _$User implements IEntity {
  const factory User({
    @required UniqueId id,
    @required StringSingleLine name,
    @required EmailAddress emailAddress,
  }) = _User;
}

///Eine Erweiterung der Klasse [User].
///Es ist das selbe, als wenn die Methode in der Klasse selbst vorhanden ist.
///Die Schreibweise haben wir nur verwendet um die Code generierung mit Freezed nicht sehr zu erschweren.
extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
