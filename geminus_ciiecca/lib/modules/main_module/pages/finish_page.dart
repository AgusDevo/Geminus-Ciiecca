import 'package:core/core.dart';
import 'package:finish/finish.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CiieccaAppBar.createAppBar(),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: FinishComponent(),
      ),
    );
  }
}
