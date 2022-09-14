import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:survey/survey.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CiieccaAppBar.createAppBar(),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: SurveyComponent(),
      ),
    );
  }
}
