import 'package:flutter/material.dart';

class FinishHeaderText extends StatelessWidget {
  const FinishHeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "¡Felicitaciones!\n Has completado el autodiagnóstico\n de ciberseguridad",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(
          255,
          13,
          183,
          173,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }
}
