import 'package:flutter/material.dart';

class SurveyInvite extends StatelessWidget {
  const SurveyInvite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            "assets/images/intro.png",
            package: 'core',
          ),
        ),
        const Text(
          "Te invitamos a realizar \nun breve cuestionario",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Color.fromARGB(255, 115, 154, 240),
          ),
        ),
      ],
    );
  }
}
