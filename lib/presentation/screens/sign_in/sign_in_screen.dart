import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/auth/login/bloc/login_bloc.dart';

import '../../../injection.dart';
import 'widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<LoginBloc>(),
          child: SignInForm(),
        ),
      ),
    );
  }
}