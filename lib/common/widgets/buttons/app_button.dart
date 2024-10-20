import 'package:flutter/material.dart';
import 'package:listen_music/core/configs/themes/app_colors.dart';

class appbutton extends StatelessWidget {
  final VoidCallback onpressed;
  final String tittle;
  final double? height;

  const appbutton(
      {required this.onpressed, required this.tittle, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: Size.fromHeight(height ?? 80),
            backgroundColor: AppColors.primary,
        ),
        child: Text(
          tittle,
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold,color: Colors.white),
        ));
  }
}
