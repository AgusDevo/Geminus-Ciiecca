import 'package:flutter/material.dart';

class CiieccaIncorrectHeader extends StatelessWidget {
  const CiieccaIncorrectHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/incorrect.png",
          package: 'core',
        ),
        //TODO: localize text
        const Text(
          "¡Atención!\n NO estás protegido",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(
              255,
              255,
              80,
              80,
            ),
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
