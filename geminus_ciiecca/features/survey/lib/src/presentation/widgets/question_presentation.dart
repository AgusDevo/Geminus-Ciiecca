import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:survey/src/data/helpers/survey_navigator_helper.dart';

import 'question_box.dart';

class QuestionsPresentation extends StatelessWidget {
  const QuestionsPresentation({
    Key? key,
    required List<QuestionBox> questions,
    required String label,
  })  : _questions = questions,
        _label = label,
        super(key: key);
  final List<QuestionBox> _questions;
  final String _label;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.height > size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: isMobile ? size.width * 0.03 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
        border: Border.all(
          color: Colors.grey,
          width: .5,
        ),
      ),
      child: SingleChildScrollView(
        child: Flex(
          direction: isMobile ? Axis.vertical : Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(
                  70,
                  174,
                  195,
                  255,
                ),
              ),
              child: Stack(
                children: [
                  const SurveyTitle(),
                  SurveyImage(
                    isMobile: isMobile,
                    size: size,
                  ),
                ],
              ),
            ),
            SurveyContent(
              isMobile: isMobile,
              size: size,
              label: _label,
              questions: _questions,
            ),
          ],
        ),
      ),
    );
  }
}

class SurveyContent extends StatelessWidget {
  const SurveyContent({
    Key? key,
    required this.isMobile,
    required this.size,
    required String label,
    required List<QuestionBox> questions,
  })  : _label = label,
        _questions = questions,
        super(key: key);

  final bool isMobile;
  final Size size;
  final String _label;
  final List<QuestionBox> _questions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isMobile ? null : size.height * .72,
      width: isMobile ? null : size.width * .52,
      child: Column(
        children: [
          Padding(
            padding: isMobile
                ? EdgeInsets.only(
                    left: size.width * .03,
                    top: size.height * .02,
                  )
                : EdgeInsets.only(
                    left: size.width * .01,
                    top: size.height * .01,
                  ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _label,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 10),
                ..._questions,
              ],
            ),
          ),
          if (!isMobile) const Spacer(),
          Container(
            margin: EdgeInsets.only(
                left: isMobile ? 0 : size.width * .4, bottom: isMobile ? 0 : 4),
            width: isMobile ? size.width * .9 : null,
            child: Consumer(
              builder: (context, ref, _) => CiieccaTextButton(
                label: 'Siguiente',
                onTap: () =>
                    SurveyNavigatorHelper.onSurveyContinue(ref, _questions),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SurveyTitle extends StatelessWidget {
  const SurveyTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      left: 20,
      child: Text(
        "Perfil empresa",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Colors.transparent,
            shadows: const [
              Shadow(
                offset: Offset(0, -10),
                color: Colors.black,
              ),
            ],
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: Colors.amber.shade800,
            decorationThickness: 3),
      ),
    );
  }
}

class SurveyImage extends StatelessWidget {
  const SurveyImage({
    Key? key,
    required this.isMobile,
    required this.size,
  }) : super(key: key);

  final bool isMobile;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Image.asset(
        "assets/images/survey.png",
        package: 'core',
        fit: BoxFit.contain,
        height: isMobile ? size.height * .3 : size.height * .6,
        width: isMobile ? size.width * .9 : size.width * .3,
      ),
    );
  }
}
