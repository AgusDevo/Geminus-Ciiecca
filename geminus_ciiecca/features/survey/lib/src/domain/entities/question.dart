import 'dart:convert';

class Question {
    Question({
        required this.label,
        required this.answer,
    });

    String label;
    String answer;

    factory Question.fromRawJson(String str) => Question.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Question.fromJson(Map<String, dynamic> json) => Question(
        label: json["label"],
        answer: json["answer"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "answer": answer,
    };
}
