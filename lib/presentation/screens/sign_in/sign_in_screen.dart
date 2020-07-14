import 'package:flutter/material.dart';
import 'package:grades/presentation/core/style/app_colors.dart';

import 'widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.scaffold,
        child: SafeArea(
          child: SignInForm(),
        ),
      ),
    );
  }
}
