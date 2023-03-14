// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_integrations/ui/screens/screen_home.dart';
import 'package:app_integrations/ui/styles/themes.dart';

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      home: const ScreenHome(),
    );
  }
}
