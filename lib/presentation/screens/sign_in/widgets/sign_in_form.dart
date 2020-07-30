import 'package:animations/animations.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grades/application/auth/login/bloc/login_bloc.dart';
import 'package:grades/presentation/core/page_routes.dart';
import 'package:grades/presentation/core/providers.dart';
import 'package:grades/presentation/core/style/app_colors.dart';
import 'package:grades/presentation/screens/grades/grades_overview/grades_overview_screen.dart';
import 'package:grades/presentation/screens/splash/widgets/grades_logo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final loginBloc = useProvider(loginBlocProvider);
    final focusNode = useFocusNode();

    final size = MediaQuery.of(context).size;
    return BlocConsumer<LoginBloc, LoginState>(
      cubit: loginBloc,
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Vorgang Abgebrochen',
                  serverError: (_) => 'Serverfehler',
                  emailAlreadyInUse: (_) =>
                      'Die eingegebene Email ist bereits in Verwendung',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Ungültige Email und Passwort Kombination',
                ),
              ).show(context);
            },
            (_) {
              Navigator.of(context).pushReplacement(PageRoutes.sharedAxis(
                  () => GradesOverviewScreen(),
                  SharedAxisTransitionType.horizontal));
            },
          ),
        );
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              autovalidate: state.showErrorMessages,
              child: SizedBox(
                height: size.height - 32,
                child: Column(
                  children: [
                    const Spacer(),
                    GradesLogo(
                      size: size.height / 40,
                    ),
                    const Spacer(),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email',
                      ),
                      autocorrect: false,
                      onFieldSubmitted: (_) => focusNode.requestFocus(),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) =>
                          loginBloc.add(LoginEvent.emailChanged(value)),
                      validator: (_) => loginBloc.state.emailAddress.value.fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Ungültige Emailadresse',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                      ),
                      focusNode: focusNode,
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (value) =>
                          loginBloc.add(LoginEvent.passwordChanged(value)),
                      validator: (_) => loginBloc.state.password.value.fold(
                        (f) => f.maybeMap(
                          shortPassword: (_) => 'Zu kurzes Passwort',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              loginBloc.add(
                                const LoginEvent
                                    .signInWithEmailAndPasswordPressed(),
                              );
                            },
                            child: const Text('EINLOGGEN'),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              loginBloc.add(
                                const LoginEvent
                                    .registerWithEmailAndPasswordPressed(),
                              );
                            },
                            child: const Text('REGISTRIEREN'),
                          ),
                        ),
                      ],
                    ),
                    RaisedButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {
                        loginBloc
                            .add(const LoginEvent.signInWithGooglePressed());
                      },
                      color: AppColors.fontColor.withOpacity(0.8),
                      child: const Text(
                        'MIT GOOGLE ANMELDEN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if (state.isSubmitting) ...[
                      const SizedBox(height: 8),
                      const Text('Daten werden übermittelt...'),
                    ],
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
