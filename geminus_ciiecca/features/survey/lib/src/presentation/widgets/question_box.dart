// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:survey/src/presentation/widgets/select_answer.dart';

class QuestionBox extends StatelessWidget {
  final String _label;
  final Set<String> _answers;
  QuestionBox({
    Key? key,
    required String label,
    Set<String>? answers,
  })  : _label = label,
        _answers = answers ?? {'Si', 'No', 'No lo se'},
        super(key: key);

  String? _currentValue;
  String? get currentValue => _currentValue;
  int? _currentIndex;
  int? get currentIndex => _currentIndex;
  String get label => _label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          SelectAnswer(
            answers: _answers,
            onChanged: (int n) {
              _currentIndex = n;
              _currentValue = _answers.elementAt(n);
            },
          )
        ],
      ),
    );
  }
}
