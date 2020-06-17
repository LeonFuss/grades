import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/auth/bloc/auth_bloc.dart';
import 'package:grades/presentation/routes/router.gr.dart';
import 'package:grades/presentation/screens/splash/widgets/grades_logo.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.gradesOverviewScreen),
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
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
