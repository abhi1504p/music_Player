import 'package:flutter/material.dart';

class emails extends StatelessWidget {
   emails({super.key});
  final TextEditingController _emailController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
        keyboardType: TextInputType.emailAddress,
        controller:_emailController,

        decoration: InputDecoration(
            filled: true,

            hintText: "Email",suffixStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),

            fillColor: Colors.transparent,
            contentPadding: EdgeInsets.all(25),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))));
  }
}

