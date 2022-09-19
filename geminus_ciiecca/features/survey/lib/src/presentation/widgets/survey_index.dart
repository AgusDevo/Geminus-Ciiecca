import 'package:flutter/material.dart';

class SurveyIndex extends StatelessWidget {
  const SurveyIndex(int firstNumber, int secondNumber,
      {Key? key, EdgeInsetsGeometry? margin})
      : _firstNumber = firstNumber,
        _secondNumber = secondNumber,
        _margin = margin,
        super(key: key);
  final int _firstNumber;
  final int _secondNumber;
  final EdgeInsetsGeometry? _margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: _margin,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.orange),
            child: Text(
              '$_firstNumber',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Text('de'),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade300),
            child: Text(
              '$_secondNumber',
              style: const TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
