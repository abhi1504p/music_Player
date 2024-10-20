import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:listen_music/common/helper/is_darkmode.dart';
import 'package:listen_music/common/widgets/buttons/app_button.dart';
import 'package:listen_music/core/configs/assets/app_images.dart';
import 'package:listen_music/core/configs/assets/app_vector.dart';
import 'package:listen_music/presentation/authentication/pages/Sign_in.dart';

import '../../../common/widgets/Appbar/appbar.dart';
import '../../../core/configs/themes/app_theme.dart';
import 'Register.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbars(title: null),

      body: Stack(
        children: [
         
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(appVector.top_patten),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(appVector.bottom_pattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(appImages.auth_bg),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(appVector.logo),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Enjoy Listening To Music",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Center(
                      child: Text(
                    "Whenever you put out music, you're  just \nrolling the dice, and the nice thing with \nSpotify is they're willing to roll them with you.",
                    textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: context.isDarkMode?Colors.white.withOpacity(.6):Colors.grey.shade600,fontSize: 17),
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child:
                              appbutton(onpressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Register()));
                              }, tittle: "Register")),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: TextButton(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold,color: context.isDarkMode?Colors.white:Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Sign()));
                        },
                      ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
