import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:listen_music/common/helper/is_darkmode.dart';
import 'package:listen_music/core/configs/assets/app_vector.dart';
import 'package:listen_music/presentation/authentication/pages/signup_page.dart';

import '../../../common/widgets/Appbar/appbar.dart';
import '../../../common/widgets/Signup_Information/emails.dart';
import '../../../common/widgets/Signup_Information/name.dart';
import '../../../common/widgets/Signup_Information/passwords.dart';
import '../../../common/widgets/buttons/app_button.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

              const SizedBox(
                height: 25,
              ),
               emails(),
              const SizedBox(
                height: 25,
              ),
               password(),
              SizedBox(height: 45,),
              appbutton(onpressed: (){}, tittle: "Create Account"),
              SizedBox(height: 250,),
              _sign(context)



            ],
          ),
        ),
      ),
    );
  }

  Text register_text(BuildContext context) {
    return Text(
      "Sign",
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
          "Not a member?",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: context.isDarkMode ? Colors.white : Colors.black),
          textAlign: TextAlign.center,
        ),TextButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Signup()));
        }, child: Text("Register Now"))
      ],
    ),
  );
}
