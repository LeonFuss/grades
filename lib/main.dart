import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grades/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// Begrenzt die möglichen Ausrichtungen der App auf den Portrait-Modus.
  /// [WidgetsFlutterBinding.ensureInitialized()] stellt sicher das das FlutterFramework gestartet wurde.
  /// Dies ist notwendig um die Gerätausrichtung festzulegen
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// Stellt sicher, dass die richtigen Klassen injektiert werden
  configureInjection(Environment.prod);

  /// Top-Level Function um das Rendern des FLutter-Frameworks zu starten
  runApp(AppWidget());
}
