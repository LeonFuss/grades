import 'package:auto_route/auto_route_annotations.dart';
import 'package:grades/presentation/screens/dialoges/update_grade/update_grade_page.dart';
import 'package:grades/presentation/screens/dialoges/update_subject/update_subject_page.dart';
import 'package:grades/presentation/screens/grades/grades_detail/grades_detail_screen.dart';
import 'package:grades/presentation/screens/grades/grades_overview/grades_overview_screen.dart';
import 'package:grades/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:grades/presentation/screens/splash/splash_screen.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashScreen splashPage;

  SignInScreen signInPage;

  GradesOverviewScreen gradesOverviewScreen;

  @MaterialRoute(fullscreenDialog: true)
  UpdateSubjectPage updateSubjectPage;

  @MaterialRoute(fullscreenDialog: true)
  UpdateGradePage updateGradePage;

  GradesDetailScreen gradesDetailScreen;
}
