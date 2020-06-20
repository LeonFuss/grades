// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grades/presentation/screens/dialoges/update_subject/update_subject_page.dart';
import 'package:grades/presentation/screens/grades/grades_overview/grades_overview_screen.dart';
import 'package:grades/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:grades/presentation/screens/splash/splash_screen.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const gradesOverviewScreen = '/grades-overview-screen';
  static const updateSubjectPage = '/update-subject-page';
  static const all = {
    splashPage,
    signInPage,
    gradesOverviewScreen,
    updateSubjectPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInScreen(),
          settings: settings,
        );
      case Routes.gradesOverviewScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => GradesOverviewScreen().wrappedRoute(context),
          settings: settings,
        );
      case Routes.updateSubjectPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => UpdateSubjectPage(),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushGradesOverviewScreen() => pushNamed(Routes.gradesOverviewScreen);

  Future pushUpdateSubjectPage() => pushNamed(Routes.updateSubjectPage);
}
