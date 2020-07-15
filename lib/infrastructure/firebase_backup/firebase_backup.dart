import 'package:grades/infrastructure/core/firestore_helpers.dart';

class FirebaseBackup {
  final Firestore _firestore;

  FirebaseBackup(this._firestore);

  Future<bool> checkForExistingBackup() async {
    try {
      final userDoc = await _firestore.userDocument();
      final doc = await userDoc.get();
      return doc.exists;
    } catch (e) {
      return false;
    }
  }
}
