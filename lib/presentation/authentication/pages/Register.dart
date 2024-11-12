import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:listen_music/common/helper/is_darkmode.dart';
import 'package:listen_music/common/widgets/Appbar/appbar.dart';
import 'package:listen_music/common/widgets/Signup_Information/emails.dart';
import 'package:listen_music/common/widgets/Signup_Information/name.dart';
import 'package:listen_music/common/widgets/Signup_Information/passwords.dart';
import 'package:listen_music/common/widgets/buttons/app_button.dart';
import 'package:listen_music/core/configs/assets/app_vector.dart';
import 'package:listen_music/presentation/authentication/pages/Sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:listen_music/presentation/authentication/services/auth_service.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();


class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbars(
        title: SvgPicture.asset(
          appVector.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              register_text(context),
              const SizedBox(
                height: 30,
              ),
              const Name(),
              const SizedBox(
                height: 25,
              ),
               emails(),
              const SizedBox(
                height: 25,
              ),
               password(),
              SizedBox(height: 35,),
              appbutton(onpressed: () async{await Authservice().Sign(email:_emailController.text, password: _passwordController.text);


              }, tittle: "Create Account"),
              SizedBox(height: 180,),
              _sign(context)

              
        
            ],
          ),
        ),
      ),
    );
  }

  Text register_text(BuildContext context) {
    return Text(
      "Register",
      style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: context.isDarkMode ? Colors.white : Colors.black),
      textAlign: TextAlign.center,
    );
  }
}
Padding _sign(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Do you have an account? ",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: context.isDarkMode ? Colors.white : Colors.black),
          textAlign: TextAlign.center,
        ),TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Sign()));
        }, child: Text("Sign In"))
      ],
    ),
  );
}

