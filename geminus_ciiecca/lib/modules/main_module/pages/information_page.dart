import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:information/information.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CiieccaAppBar.createAppBar(),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: InformationComponent(),
      ),
    );
  }
}
