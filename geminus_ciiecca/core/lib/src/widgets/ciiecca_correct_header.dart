import 'package:flutter/material.dart';

class CiieccaCorrectHeader extends StatelessWidget {
  const CiieccaCorrectHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/correct.png",
          package: 'core',
        ),
        //TODO: localize text
        const Text(
          "¡Genial!\nEstás protegido",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(
              255,
              13,
              183,
              173,
            ),
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
