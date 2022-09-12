import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:survey/src/domain/question_entity.dart';

class QuestionsBox extends StatelessWidget {
  const QuestionsBox(
      {Key? key, required List<Question> questions, required String label})
      : _questions = questions,
        _label = label,
        super(key: key);
  final List<Question> _questions;
  final String _label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: .5)),
      child: Column(
        // TODO create a component to merge the photo; must be responsive
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _label,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),
          ..._questions,
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width *
                    .5), //TODO responsive design
            child: CiieccaTextButton(
              label: 'Continuar',
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
