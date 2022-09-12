import 'package:flutter/material.dart';
import 'package:survey/src/domain/question_entity.dart';
import 'package:survey/src/presentation/widgets/selec_answer.dart';

class SimpleQuestion extends Question {
  const SimpleQuestion({Key? key, required String label})
      : _label = label,
        super(key: key);
  final String _label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(_label), const SelectAnswer()],
    );
  }
}
