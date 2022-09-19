import 'package:survey/src/domain/entities/question.dart';

class Step {
  int id;
  List<Question> correctAnswers;
  List<Question> wrongAnswers;

  Step({
    required this.id,
    required this.correctAnswers,
    required this.wrongAnswers,
  });
}
