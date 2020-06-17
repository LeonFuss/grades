import 'failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Es ist ein Fehler aufgetreten, von dem es aus nicht mehr möglich ist die App weiterauszuführen. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
