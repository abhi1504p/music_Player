import 'package:flutter/material.dart';
import 'package:listen_music/core/configs/themes/app_theme.dart';

import 'package:listen_music/presentation/splash/pages/splash.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeProvider(islighttheme: false).themeData(),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
