import 'package:flutter/material.dart';

class password extends StatelessWidget {
   password({super.key});
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _passwordController,

        decoration: InputDecoration(
            hintText: "Password",

            filled: true,
            fillColor: Colors.transparent,
            contentPadding: EdgeInsets.all(25),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))));
  }
}

