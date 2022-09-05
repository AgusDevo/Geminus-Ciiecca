import 'package:geminus_ciiecca/application/application_theme.dart';
import 'package:geminus_ciiecca/modules/main_module/main_module.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [
        Locale('en', ''),
      ],
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
