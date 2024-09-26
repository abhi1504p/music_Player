import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:listen_music/common/widgets/buttons/app_button.dart';
import 'package:listen_music/core/configs/assets/app_images.dart';
import 'package:listen_music/core/configs/assets/app_vector.dart';
import 'package:listen_music/presentation/choose_mode/pages/choose_mode.dart';

class getstartpage extends StatelessWidget {
  const getstartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(appImages.introbg), fit: BoxFit.fill)),

          ),
          Container(
            color: Colors.black.withOpacity(.11),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(appVector.logo),
                ),
                const Spacer(),
                const Text(
                  "Where words leave off music begins.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  "Music touches us emotionally where words alone can't.\n Music isn't just a pleasure, a transient satisfaction.\nMusic is very spiritual, it has the power to bring people together.",
                  style: TextStyle(
                      height: 1.6,
                      fontSize: 13.6,
                      color: Colors.grey.withOpacity(.9),
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                appbutton(onpressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => chooseModePage(),));
                }, tittle: "Get Started")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
