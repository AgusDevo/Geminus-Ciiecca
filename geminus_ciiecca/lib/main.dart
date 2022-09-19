import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:geminus_ciiecca/application/application.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const ProviderScope(child: Application()));
}
