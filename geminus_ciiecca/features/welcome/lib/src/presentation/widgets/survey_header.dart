import 'package:flutter/material.dart';

class SurveyHeader extends StatelessWidget {
  const SurveyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .03,
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/images/lock.png",
            package: 'core',
          ),
          //TODO: Localize text
          const Text(
            "Autodiagnostico PYMES",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
          const Text(
            "En este segmento te ayudarémos a que aprendas los conocimientos básicos en cyber seguridad para que puedas trabajar de forma segura en tu organización",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Color.fromARGB(255, 132, 132, 132),
            ),
          ),
        ],
      ),
    );
  }
}
