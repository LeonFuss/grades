import 'package:bloc/bloc.dart';

///[CustomBlocDelegate] erleichtert das Debuggen der Blocs.
class CustomBlocDelegate extends BlocDelegate {
  ///Bei jedem Zustandswechsel wird der alte und neue Zustand in der Konsole ausgegeben.
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  ///Bei jeglichem Fehler der Auftritt wird der Fehler,
  ///zusammen mit dem Bloc in dem der Fehler aufgetreten ist, ausgegeben.
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}
