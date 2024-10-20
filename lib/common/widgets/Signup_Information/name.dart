import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          hintText: "Name",
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(25),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))));
  }
}

