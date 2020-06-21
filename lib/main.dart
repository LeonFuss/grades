import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'application/core/custom_bloc_delegate.dart';
import 'injection.dart';

void main() {
  /// Initialisiert das loggen der einzelenen Operationen der BLoCs (Business Logic Component)
  BlocSupervisor.delegate = CustomBlocDelegate();

  WidgetsFlutterBinding.ensureInitialized();

  /// Begrenzt die möglichen Ausrichtungen der App auf den Potrait-Modus.
  /// [WidgetsFlutterBinding.ensureInitialized()] stellt sicher das das FlutterFramework gestartet wurde.
  /// Dies ist notwendig um die Geräteausrichtung festzulegen
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIOverlays([]);

  /// Stellt sicher, dass die richtigen Klassen injectiert werden
  configureInjection(Environment.prod);

  /// Top-Level Function um das Rendern des FLutter-Frameworks zu starten
  runApp(AppWidget());
}
