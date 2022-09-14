import 'package:geminus_ciiecca/modules/main_module/pages/survey_page.dart';
import 'package:geminus_ciiecca/modules/main_module/pages/welcome_page.dart';
import 'package:flutter/material.dart';

abstract class MainModule {
  static const String welcomeRoute = "/welcome";
  static const String surveyRoute = "/survey";

  static Map<String, WidgetBuilder> generateRoutes() {
    return {
      welcomeRoute: (context) => const WelcomePage(),
      surveyRoute: (context) => const SurveyPage(),
    };
  }
}
