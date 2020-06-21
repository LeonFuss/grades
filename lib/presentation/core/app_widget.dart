import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';

import '../../injection.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'Grades',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(router: Router()),
        theme: ThemeData(
          primaryColor: AppColors.inputBg,
          accentColor: AppColors.accentColor,
          textTheme: GoogleFonts.montserratTextTheme(const TextTheme().apply(
              bodyColor: AppColors.inputBg,
              displayColor: AppColors.inputBg,
              decorationColor: AppColors.inputBg,
              fontSizeDelta: 50)),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.inputBg),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          scaffoldBackgroundColor: AppColors.primaryColor,
          appBarTheme: AppBarTheme(
            color: AppColors.primaryColor,
            elevation: 0,
            actionsIconTheme:
                IconThemeData(size: 32, color: AppColors.accentColor),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: AppColors.accentColor),
        ),
      ),
    );
  }
}
