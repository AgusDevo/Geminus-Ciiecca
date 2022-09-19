import 'package:core/core.dart';
import 'package:flutter/material.dart';

class FinishButtons extends StatelessWidget {
  const FinishButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          SizedBox(
            width: size.width * .18,
            child: CiieccaIconButton(
              label: "Decargar formulario",
              onTap: () {},
              icon: const Icon(
                Icons.file_download_outlined,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: size.width * .18,
            child: CiieccaTextButton(
              label: "Aceptar y volver al inicio",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
