import 'dart:convert';

import 'package:survey/src/domain/entities/question.dart';

class Step {
    Step({
        required this.id,
        required this.correctAnswers,
        required this.wrongAnswers,
    });

    int id;
    List<Question> correctAnswers;
    List<Question> wrongAnswers;

    factory Step.fromRawJson(String str) => Step.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Step.fromJson(Map<String, dynamic> json) => Step(
        id: json["id"],
        correctAnswers: List<Question>.from(json["good-answers"].map((x) => Question.fromJson(x))),
        wrongAnswers: List<Question>.from(json["wrong-answers"].map((x) => Question.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "good-answers": List<dynamic>.from(correctAnswers.map((x) => x.toJson())),
        "wrong-answers": List<dynamic>.from(wrongAnswers.map((x) => x.toJson())),
    };
}
