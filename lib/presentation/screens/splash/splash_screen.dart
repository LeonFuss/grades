import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/screens/grades/grades_overview/grades_overview_screen.dart';
import 'package:grades/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:grades/presentation/screens/splash/widgets/grades_logo.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => Navigator.of(context).pushReplacement(
              PageRoutes.sharedAxis(() => GradesOverviewScreen())),
          unauthenticated: (_) => Navigator.of(context)
              .pushReplacement(PageRoutes.sharedAxis(() => SignInScreen())),
        );
      },
      child: const Scaffold(
        body: Center(
          child: GradesLogo(),
        ),
      ),
    );
  }
}
