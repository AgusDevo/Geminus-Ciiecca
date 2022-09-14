import 'package:flutter/material.dart';
import 'package:survey/src/presentation/widgets/questions_box.dart';

import 'widgets/simple_question.dart';

class SurveyComponent extends StatelessWidget {
  const SurveyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: QuestionsBox(
        label: 'Contraseñas',
        questions: [
          SimpleQuestion(
            label: '¿Posee contraseñas para acceder a su dispositivo?',
          ),
          SimpleQuestion(
            label: '¿Posee contraseñas para leer sus correos?',
          ),
          SimpleQuestion(
            label:
                '¿Usa la misma contraseña para otros accesos? Redes sociales, correos, Netflix, etc',
          ),
          SimpleQuestion(
            label: '¿Entiende el concepto de contraseña segura?',
          ),
          SimpleQuestion(
            label:
                '¿Tiene activado el doble factor o autenticacion en dos pasos?',
          ),
        ],
      ),
    );
  }
}
