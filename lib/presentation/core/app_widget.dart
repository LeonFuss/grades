import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grades/presentation/screens/splash/splash_screen.dart';

import 'style/app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Grades',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: AppColors.scaffold,
        accentColor: AppColors.accent,
        inputDecorationTheme: InputDecorationTheme(
          focusColor: AppColors.secondFontColor,
          labelStyle: TextStyle(color: AppColors.secondFontColor),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.secondFontColor, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.fontColor),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.fontColor),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        scaffoldBackgroundColor: AppColors.scaffold,
        appBarTheme: AppBarTheme(
          color: AppColors.scaffold,
          elevation: 0,
          actionsIconTheme: IconThemeData(size: 32, color: AppColors.accent),
        ),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: AppColors.accent),
      ),
    );
  }
}
