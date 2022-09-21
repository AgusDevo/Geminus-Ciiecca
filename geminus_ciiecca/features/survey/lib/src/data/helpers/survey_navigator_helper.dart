import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:survey/src/data/helpers/request_helper.dart';
import 'package:survey/src/data/providers/index_provider.dart';
import 'package:survey/src/data/providers/survey_provider.dart';
import 'package:survey/src/domain/entities/question.dart';
import 'package:survey/src/domain/entities/step.dart' as st;
import 'package:survey/src/presentation/widgets/question_box.dart';

abstract class SurveyNavigatorHelper {
  static void onSurveyContinue(
      BuildContext context, WidgetRef ref, List<QuestionBox> questions) {
    bool isValidForm = true;
    final currentIndex = ref.watch(index);
    if (currentIndex == 4) {
      _postInformation(
        RequestHelper.instance,
        path:
            'https://geminustest-75de0-default-rtdb.firebaseio.com/surveys.json',
        body: json.encode(
          ref.watch(survey),
        ),
      );
      return;
      //TODO Navigate to final Screen
    }
    for (final question in questions) {
      if (question.currentValue == null) {
        isValidForm = false;
        break;
      }
    }
    if (isValidForm) {
      _surveyJsonFormer(ref, questions);
      ref.watch(index.notifier).state++;
    }
    if (_shouldNavigate(currentIndex)) _navegateToResults(context);
  }

  static bool _shouldNavigate(int index) => index != 0;

  static void _navegateToResults(BuildContext context) {
    Navigator.pushNamed(context, '/results', arguments: true);
  }

  static void _postInformation(RequestHelper petitor,
          {required String path, Object? body}) =>
      petitor.post(path, body: body);

  static void _surveyJsonFormer(WidgetRef ref, List<QuestionBox> questions) {
    final surverProvider = ref.watch(survey);
    final indexProvider = ref.watch(index);
    final List<Question> correctAnswers = [];
    final List<Question> wrongAnswers = [];
    for (final question in questions) {
      if (question.currentIndex == 0) {
        correctAnswers.add(
            Question(answer: question.currentValue!, label: question.label));
      } else {
        wrongAnswers.add(
            Question(answer: question.currentValue!, label: question.label));
      }
    }
    surverProvider.steps.add(st.Step(
        id: indexProvider,
        correctAnswers: correctAnswers,
        wrongAnswers: wrongAnswers));
  }
}
