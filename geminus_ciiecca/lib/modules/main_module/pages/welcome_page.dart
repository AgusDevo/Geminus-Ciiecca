import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:welcome/welcome.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CiieccaAppBar.createAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: WelcomeComponent(
          acceptTermsText: AppLocalizations.of(context)!.accept_terms,
          startButtonText: AppLocalizations.of(context)!.welcome_start_button,
          welcomeBodyText: AppLocalizations.of(context)!.welcome_body,
          welcomeTitleText: AppLocalizations.of(context)!.welcome_title,
        ),
      ),
    );
  }
}
