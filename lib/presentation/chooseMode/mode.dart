import 'package:flutter/material.dart' '';
import 'package:listen_music/core/configs/themes/app_colors.dart';
import 'package:listen_music/core/configs/themes/app_theme.dart';

class choosemode extends StatefulWidget {
  const choosemode({super.key});

  @override
  State<choosemode> createState() => _choosemodeState();
}

class _choosemodeState extends State<choosemode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: ThemeProvider(islighttheme: true).themeMode().gradientColors!,
          ),
        ),
      ),
    );
  }
}
