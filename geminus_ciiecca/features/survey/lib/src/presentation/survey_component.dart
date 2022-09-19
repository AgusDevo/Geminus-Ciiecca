import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:survey/src/data/providers/index_provider.dart';
import 'widgets/question_presentation.dart';
import 'widgets/question_box.dart';
import 'widgets/survey_index.dart';

class SurveyComponent extends ConsumerWidget {
  const SurveyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    int currentIndex = ref.watch(index);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CiiecaPaddedText(
          'Autodiagnóstico PYMES',
          padding:
              EdgeInsets.symmetric(horizontal: size.width * .08, vertical: 5),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Consumer(
          builder: (context, ref, child) {
            return SurveyIndex(
              ++currentIndex,
              _questionsBoxes.length,
              margin: EdgeInsets.only(left: size.width * .08, bottom: 10),
            );
          },
        ),
        Container(
          width: size.width,
          height: size.height * .725,
          padding: EdgeInsets.symmetric(horizontal: size.width * .05),
          child: _questionsBoxes[currentIndex],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

List<QuestionsPresentation> _questionsBoxes = [
  QuestionsPresentation(
    label: 'EMPRESA',
    questions: [
      QuestionBox(
        label: '¿Cuantas personas trabajan en su empresa o PYME?',
        answers: const {'1 - 50', '51 - 100', '101 o más'},
      ),
      QuestionBox(
        label: '¿Qué dispositivos usan para trabajar?',
        answers: const {'PC o notebook', 'Celular', 'Todas las anteriores'},
      )
    ],
  ),
  QuestionsPresentation(
    questions: [
      QuestionBox(
          label:
              '¿Su organización cuenta con backup de TODA\n la información relacionada de la empresa o PYME?,',
          answers: const {'Si', 'No', 'No entiendo el concepto'}),
      QuestionBox(
        label: '¿El backup está automatizado o es manual?,',
        answers: const {'Si', 'No', 'No entiendo el concepto'},
      )
    ],
    label: 'BACKUP',
  ),
  QuestionsPresentation(
    label: 'CONTRASEÑAS',
    questions: [
      QuestionBox(
        label: '¿Posee contraseñas para acceder a su dispositivo?',
      ),
      QuestionBox(
        label: '¿Posee contraseñas para leer sus correos?',
      ),
      QuestionBox(
        label:
            '¿Usa la misma contraseña para otros accesos?\n Redes sociales, correos, Netflix, etc',
      ),
      QuestionBox(
        label: '¿Entiende el concepto de contraseña segura?',
      ),
      QuestionBox(
        label: '¿Tiene activado el doble factor o autenticacion en dos pasos?',
      ),
    ],
  ),
  QuestionsPresentation(
    questions: [
      QuestionBox(
        label: '¿Su ordenador tiene antivirus instalado y actualizado?',
      ),
      QuestionBox(
        label: '¿Su ordenador tiene un firewall activo?',
      ),
      QuestionBox(
        label: '¿Su celular tiene PIN o control de acceso?',
      ),
      QuestionBox(
        label:
            'Usted usa una red Wifi segura o privada o se conecta a una red pública?',
      )
    ],
    label: 'DISPOSITIVOS',
  ),
  QuestionsPresentation(
    questions: [
      QuestionBox(
        label: '¿Su ordenador o celular posee las actualizaciones al día?',
      ),
      QuestionBox(
        label:
            '¿Sus dispositivos se actualizan automaticamente o son obsoletos?',
      ),
      QuestionBox(
        label:
            '¿Usted instala software en sus dispositivos originales o copias?',
      ),
      QuestionBox(
        label: '¿Antes de instalar un software, valida si es seguro o no?',
      )
    ],
    label: 'SOFTWARE',
  )
];
