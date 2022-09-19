import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResultsPage extends StatelessWidget {
  final bool _isCorrect;
  const ResultsPage({
    super.key,
    required bool isCorrect,
  }) : _isCorrect = isCorrect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CiieccaAppBar.createAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CiieccaResults(
          isCorrect: _isCorrect,
        ),
      ),
    );
  }
}
