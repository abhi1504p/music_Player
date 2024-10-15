

import 'package:flutter/material.dart';

class appbutton extends StatelessWidget {
  final VoidCallback onpressed;
  final String tittle;
  final double ?height;

  const appbutton(
      {required this.onpressed, required this.tittle, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(elevation: 0,minimumSize:Size.fromHeight(height??80)),
        child: Text(tittle));
  }
}
