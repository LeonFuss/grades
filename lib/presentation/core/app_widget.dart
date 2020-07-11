import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/application/grades/statistic/statistic_bloc.dart';

import '../../injection.dart';
import 'style/app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          lazy: true,
          create: (context) => getIt<StatisticBloc>()
            ..add(const StatisticEvent.statisticStarted()),
        )
      ],
      child: MaterialApp(
        title: 'Grades',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.scaffold,
          accentColor: AppColors.accent,
          textTheme: GoogleFonts.montserratTextTheme(const TextTheme().apply(
            bodyColor: AppColors.fontColor,
            displayColor: AppColors.fontColor,
            decorationColor: AppColors.fontColor,
            fontSizeDelta: 50,
          )),
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
      ),
    );
  }
}
