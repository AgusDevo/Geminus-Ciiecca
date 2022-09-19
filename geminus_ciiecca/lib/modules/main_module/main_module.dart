import 'package:geminus_ciiecca/modules/main_module/pages/finish_page.dart';
import 'package:geminus_ciiecca/modules/main_module/pages/information_page.dart';
import 'package:geminus_ciiecca/modules/main_module/pages/results_page.dart';
import 'package:geminus_ciiecca/modules/main_module/pages/survey_page.dart';
import 'package:geminus_ciiecca/modules/main_module/pages/welcome_page.dart';
import 'package:flutter/material.dart';

abstract class MainModule {
  static const String welcomeRoute = "/welcome";
  static const String surveyRoute = "/survey";
  static const String resultsRoute = "/results";
  static const String informationRoute = "/information";
  static const String finishRoute = "/finish";

  static Map<String, WidgetBuilder> generateRoutes() {
    return {
      welcomeRoute: (context) => const WelcomePage(),
      surveyRoute: (context) => const SurveyPage(),
      resultsRoute: (context) => const ResultsPage(
            isCorrect: true,
          ),
      informationRoute: (context) => const InformationPage(),
      finishRoute: (context) => const FinishPage(),
    };
  }
}
