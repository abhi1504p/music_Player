import 'package:flutter/material.dart';

class password extends StatelessWidget {
  const password({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: "Password",

            filled: true,
            fillColor: Colors.transparent,
            contentPadding: EdgeInsets.all(25),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))));
  }
}

