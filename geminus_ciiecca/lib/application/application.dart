import 'package:geminus_ciiecca/application/application_theme.dart';
import 'package:geminus_ciiecca/modules/main_module/main_module.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ApplicationTheme.light,
      initialRoute: MainModule.welcomeRoute,
      routes: _generateRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }

  Map<String, WidgetBuilder> _generateRoutes() {
    return {
      ...MainModule.generateRoutes(),
    };
  }
}
