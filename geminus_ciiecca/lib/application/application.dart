import 'package:coop_ciiecca/application/application_theme.dart';
import 'package:coop_ciiecca/modules/main_module/main_module.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [
        Locale('es', ''),
      ],
      theme: ApplicationTheme.light,
      debugShowCheckedModeBanner: false,
      initialRoute: MainModule.welcomeRoute,
      //   routes: _generateRoutes(),
    );
  }
//TODO: GENERATE ROUTES
//  Map<String, WidgetBuilder> _generateRoutes() => null;
}
