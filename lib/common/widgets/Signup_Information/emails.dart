import 'package:flutter/material.dart';

class emails extends StatelessWidget {
  const emails({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            filled: true,
            hintText: "Email",suffixStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),

            fillColor: Colors.transparent,
            contentPadding: EdgeInsets.all(25),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))));
  }
}

