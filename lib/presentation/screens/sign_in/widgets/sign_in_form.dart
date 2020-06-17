import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grades/application/auth/login/bloc/login_bloc.dart';
import 'package:grades/presentation/core/app_colors.dart';
import 'package:grades/presentation/routes/router.gr.dart';
import 'package:grades/presentation/screens/splash/widgets/grades_logo.dart';

class SignInForm extends StatelessWidget {
  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocConsumer<LoginBloc, LoginState>(
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
              ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.gradesOverviewScreen);
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
                      onChanged: (value) => context
                          .bloc<LoginBloc>()
                          .add(LoginEvent.emailChanged(value)),
                      validator: (_) => context
                          .bloc<LoginBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
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
                      onChanged: (value) => context
                          .bloc<LoginBloc>()
                          .add(LoginEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.bloc<LoginBloc>().state.password.value.fold(
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
                              context.bloc<LoginBloc>().add(
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
                              context.bloc<LoginBloc>().add(
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
                        context
                            .bloc<LoginBloc>()
                            .add(const LoginEvent.signInWithGooglePressed());
                      },
                      color: AppColors.inputBg.withOpacity(0.8),
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
