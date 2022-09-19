import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CiieccaAppBar.createAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CiieccaInformation(
          titleText:
              "¿Su organización cuenta con Backup de TODA la informacion relevante de la empresa o PYMES?",
          bodyText:
              "Es sumamente importante tener backup de la información, permite a su PYMES estar tranquilo por aspectos de Ciberataques o roturas de equipos. Puede llevar a cabo backup en un dispositivo local o sincronizarlo en la nube como servicios de Google Drive, One Drive, Dropbox, otros.",
          bulletPoints: const {'Google Drive', 'Mega'},
        ),
      ),
    );
  }
}
