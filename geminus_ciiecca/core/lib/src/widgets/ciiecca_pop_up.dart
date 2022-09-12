import 'package:flutter/material.dart';
import 'package:core/core.dart';

abstract class CiieccaPopUp {
  static void showTerms(BuildContext context) => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          final size = MediaQuery.of(context).size;
          return AlertDialog(
            title: const Text(
              'Terminos y condiciones',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            actionsAlignment: MainAxisAlignment.center,
            icon: IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: () => Navigator.pop(
                context,
              ),
            ),
            iconPadding: EdgeInsets.only(
              left: size.width * .45,
              top: size.height * .02,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(bottom: size.height * .04),
                child: CiieccaTextButton(
                  label: 'Entendido y aceptar',
                  onTap: () => Navigator.pop(
                    context,
                  ),
                ),
              )
            ],
            content: SizedBox(
              height: size.height * .72,
              width: size.width * .45,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * .02),
                padding: const EdgeInsets.only(left: 10, right: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                height: size.height * .65,
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * .03,
                    vertical: size.height * .04,
                  ),
                  children: [Text(lorem)],
                ),
              ),
            ),
          );
        },
      );
}

String lorem = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at rhoncus turpis, a efficitur lacus. Curabitur a sagittis nisi, ut gravida enim. Ut fermentum dui at dui ornare rhoncus. Quisque dignissim sed orci non tincidunt. Sed consectetur lacus id faucibus rhoncus. Maecenas dui orci, finibus vitae rhoncus congue, egestas nec sapien. Nullam tincidunt, mi aliquam faucibus auctor, nisi nibh scelerisque nisl, eu ultricies orci arcu sed arcu. In blandit, ex in consectetur faucibus, mauris nisi maximus urna, ac gravida enim erat sed justo.

Vestibulum nec ex non erat fermentum fermentum. Donec lacinia pellentesque massa, ac sodales justo blandit vitae. Duis aliquet tortor nulla, et sagittis velit consequat a. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed consequat, massa et malesuada tincidunt, turpis lorem lacinia lectus, nec egestas velit neque vel dolor. Fusce justo quam, vehicula eu nunc id, gravida mollis quam. Nam vel sodales libero.

Nullam tellus ante, molestie mattis neque ac, mollis ullamcorper massa. Nam non dictum tellus. Suspendisse potenti. Donec et pretium dolor. In ac nulla eu ante commodo scelerisque. Sed ac massa vel leo elementum hendrerit non a ipsum. Cras a nibh varius, fringilla magna id, porttitor tortor.

Nullam tempor, nulla a cursus pulvinar, purus lectus consequat odio, quis ornare tellus augue at risus. Vestibulum venenatis lacus turpis, non vestibulum justo ullamcorper ut. Etiam dapibus elit odio, et tempor ipsum lobortis sit amet. In sit amet tellus tincidunt, iaculis nulla nec, gravida lacus. Aliquam at nisl nisi. Nulla eu ultrices enim, vitae molestie neque. Nulla pellentesque turpis a rutrum dignissim. Maecenas nec purus ut nulla molestie sodales eget ut est. Sed commodo faucibus lorem ac mattis. Aliquam blandit a quam vel vehicula. Phasellus sed dui sem.

Pellentesque bibendum, augue non consequat vehicula, metus nulla placerat purus, id dapibus ex nisi quis odio. Nulla accumsan dui felis, in lacinia arcu ultrices a. Duis pulvinar porta convallis. Sed eget dignissim nisi, eget interdum nisl. Maecenas non consectetur ex. Nullam at odio quis dolor posuere luctus eu in dui. Praesent id finibus nulla, eget efficitur ipsum. Donec a urna et ligula tempor molestie a quis turpis. Ut tincidunt tincidunt lacus eget imperdiet.
''';
