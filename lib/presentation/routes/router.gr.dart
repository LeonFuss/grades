// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/update_grade_page.dart';
import 'package:grades/presentation/screens/dialoges/update_subject/update_subject_page.dart';
import 'package:grades/presentation/screens/grades/grades_detail/grades_detail_screen.dart';
import 'package:grades/presentation/screens/grades/grades_overview/grades_overview_screen.dart';
import 'package:grades/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:grades/presentation/screens/splash/splash_screen.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const gradesOverviewScreen = '/grades-overview-screen';
  static const updateSubjectPage = '/update-subject-page';
  static const updateGradePage = '/update-grade-page';
  static const gradesDetailScreen = '/grades-detail-screen';
  static const all = {
    splashPage,
    signInPage,
    gradesOverviewScreen,
    updateSubjectPage,
    updateGradePage,
    gradesDetailScreen,
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
    final args = settings.arguments;
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
        if (hasInvalidArgs<UpdateSubjectPageArguments>(args)) {
          return misTypedArgsRoute<UpdateSubjectPageArguments>(args);
        }
        final typedArgs =
            args as UpdateSubjectPageArguments ?? UpdateSubjectPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => UpdateSubjectPage(
              key: typedArgs.key,
              title: typedArgs.title,
              onSubmit: typedArgs.onSubmit,
              subject: typedArgs.subject),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.updateGradePage:
        if (hasInvalidArgs<UpdateGradePageArguments>(args)) {
          return misTypedArgsRoute<UpdateGradePageArguments>(args);
        }
        final typedArgs =
            args as UpdateGradePageArguments ?? UpdateGradePageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => UpdateGradePage(
              key: typedArgs.key,
              grade: typedArgs.grade,
              subject: typedArgs.subject),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.gradesDetailScreen:
        if (hasInvalidArgs<GradesDetailScreenArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<GradesDetailScreenArguments>(args);
        }
        final typedArgs = args as GradesDetailScreenArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              GradesDetailScreen(typedArgs.subject).wrappedRoute(context),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//UpdateSubjectPage arguments holder class
class UpdateSubjectPageArguments {
  final Key key;
  final String title;
  final dynamic Function(Subject) onSubmit;
  final Subject subject;
  UpdateSubjectPageArguments(
      {this.key, this.title, this.onSubmit, this.subject});
}

//UpdateGradePage arguments holder class
class UpdateGradePageArguments {
  final Key key;
  final Grade grade;
  final Subject subject;
  UpdateGradePageArguments({this.key, this.grade, this.subject});
}

//GradesDetailScreen arguments holder class
class GradesDetailScreenArguments {
  final Subject subject;
  GradesDetailScreenArguments({@required this.subject});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushGradesOverviewScreen() => pushNamed(Routes.gradesOverviewScreen);

  Future pushUpdateSubjectPage({
    Key key,
    String title,
    dynamic Function(Subject) onSubmit,
    Subject subject,
  }) =>
      pushNamed(
        Routes.updateSubjectPage,
        arguments: UpdateSubjectPageArguments(
            key: key, title: title, onSubmit: onSubmit, subject: subject),
      );

  Future pushUpdateGradePage({
    Key key,
    Grade grade,
    Subject subject,
  }) =>
      pushNamed(
        Routes.updateGradePage,
        arguments:
            UpdateGradePageArguments(key: key, grade: grade, subject: subject),
      );

  Future pushGradesDetailScreen({
    @required Subject subject,
  }) =>
      pushNamed(
        Routes.gradesDetailScreen,
        arguments: GradesDetailScreenArguments(subject: subject),
      );
}
