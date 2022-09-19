import 'package:core/src/widgets/ciiecca_correct_header.dart';
import 'package:core/src/widgets/ciiecca_incorrect_header.dart';
import 'package:core/src/widgets/ciiecca_outlined_box.dart';
import 'package:core/src/widgets/ciiecca_text_button.dart';
import 'package:flutter/material.dart';

class CiieccaResults extends StatelessWidget {
  final bool _isCorrect;
  const CiieccaResults({
    Key? key,
    required bool isCorrect,
  })  : _isCorrect = isCorrect,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: CiieccaOutlinedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * .07,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _isCorrect
                  ? const CiieccaCorrectHeader()
                  : const CiieccaIncorrectHeader(),
              _isCorrect
                  ? const Text(
                      "Felicitaciones, tu organización cuenta con la protección básica en ciberseguridad.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 132, 132, 132),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    )
                  : const Text(
                      "A fin de cuidar tu organización, debes mejorar algunos conceptos\n de ciberseguridad. A continuación te ofrecemos\n recomendaciones para que implementes.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 132, 132, 132),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
              Divider(
                indent: size.width * .01,
                endIndent: size.width * .01,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * .03),
                child: CiieccaTextButton(
                  label: "Revisión y siguiente",
                  onTap: () => Navigator.pop(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
