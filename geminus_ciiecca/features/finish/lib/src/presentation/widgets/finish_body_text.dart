import 'package:flutter/material.dart';

class FinishBodyText extends StatelessWidget {
  const FinishBodyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "En caso de haber tenido fallas, podrás descargar\n las recomendaciones a fin de que las implementes.",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(
          255,
          132,
          132,
          132,
        ),
      ),
    );
  }
}
