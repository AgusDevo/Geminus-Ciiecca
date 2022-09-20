import 'dart:convert';

import 'package:survey/src/domain/entities/step.dart';

class Survey {
    Survey({
        required this.steps,
    });

    List<Step> steps;

    factory Survey.fromRawJson(String str) => Survey.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Survey.fromJson(Map<String, dynamic> json) => Survey(
        steps: List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "steps": List<dynamic>.from(steps.map((x) => x.toJson())),
    };
}