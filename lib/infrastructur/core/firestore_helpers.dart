import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grades/domain/auth/i_auth_facade.dart';
import 'package:grades/domain/auth/user.dart';
import 'package:grades/domain/core/errors.dart';
import 'package:grades/injection.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on Firestore {
  /// Der Benutzer muss eigeloggt sein bevor die Methode aufgerufen wird
  /// Sollte das nicht erfüllt sein wird ein  [NotAuthenticatedError] geworfen.
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final User user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get subjectCollection => collection('subjects');

  /// Nested subCollection under a [subjectCollection]'s document.
  CollectionReference get gradesCollection => collection('grades');

  DocumentReference term(int term) => collection('terms').document('t$term');
}
