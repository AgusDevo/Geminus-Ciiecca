import 'package:core/src/widgets/main_button.dart';
import 'package:flutter/material.dart';

abstract class CiieccaPopUp {
  static void showTerms(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          final size = MediaQuery.of(context).size;
          return AlertDialog(
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
              CiieccaTextButton(
                label: 'Entendido y Aceptar',
                onTap: () {},
              )
            ],
            content: SizedBox(
              height: size.height * .72,
              width: size.width * .45,
              child: Column(),
            ),
          );
        },
      );
}
