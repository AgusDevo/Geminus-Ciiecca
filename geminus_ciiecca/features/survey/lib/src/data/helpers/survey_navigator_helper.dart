import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:survey/src/data/providers/index_provider.dart';
import 'package:survey/src/presentation/widgets/question_box.dart';

abstract class SurveyNavigatorHelper {
  static void onSurveyContinue(WidgetRef ref, List<QuestionBox> questions) {
    bool isValidForm = true;
    if (ref.watch(index.notifier).state == 4) return;
    for (final question in questions) {
      if (question.currentValue == null) {
        isValidForm = false;
        break;
      }
    }
    if (isValidForm) ref.watch(index.notifier).state++;
  }
}
