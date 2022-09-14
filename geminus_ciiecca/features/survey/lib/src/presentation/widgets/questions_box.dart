import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:survey/src/domain/question_entity.dart';

class QuestionsBox extends StatelessWidget {
  const QuestionsBox({
    Key? key,
    required List<Question> questions,
    required String label,
  })  : _questions = questions,
        _label = label,
        super(key: key);
  final List<Question> _questions;
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(70, 174, 195, 255),
              ),
              child: Stack(
                children: [
                  Positioned(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Image.asset(
                      "assets/images/survey.png",
                      package: 'core',
                      fit: BoxFit.contain,
                      height: isMobile ? size.height * .3 : size.height * .7,
                      width: isMobile ? size.width * .9 : size.width * .3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: isMobile
                  ? EdgeInsets.only(
                      left: size.width * .03,
                      top: size.height * .02,
                    )
                  : EdgeInsets.only(
                      left: size.width * .03, right: size.width * .03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                  SizedBox(
                    width: isMobile ? size.width * .9 : null,
                    child: CiieccaTextButton(
                      label: 'Siguiente',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
