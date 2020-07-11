import 'package:flutter/material.dart';
import 'package:grades/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

void main() {
  /// Stellt sicher, dass die richtigen Klassen injektiert werden
  configureInjection(Environment.prod);

  /// Top-Level Function um das Rendern des FLutter-Frameworks zu starten
  runApp(AppWidget());
}
