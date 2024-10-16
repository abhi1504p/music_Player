import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' '';
import 'package:intl/intl.dart';
import 'package:listen_music/core/configs/themes/app_colors.dart';
import 'package:listen_music/core/configs/themes/app_theme.dart';
import 'package:provider/provider.dart';

import 'components/wire_draw.dart';

class choosemode extends StatefulWidget {
  const choosemode({super.key});

  @override
  State<choosemode> createState() => _choosemodeState();
}

class _choosemodeState extends State<choosemode> {
  Offset intialPosition = Offset(250, 0);
  Offset switchPosition = Offset(350, 350);
  Offset continerPosition = Offset(350, 350);
  Offset finalPosition = Offset(350, 350);
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    final Size size = MediaQuery.of(context).size;
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    intialPosition = Offset(size.width * .9, 0);
    continerPosition = Offset(size.width * .9, size.height * .4);
    finalPosition = Offset(size.width * .9, size.height * .5 - size.width * .1);
    super.didChangeDependencies();
    if (themeProvider.islighttheme) {
      switchPosition = continerPosition;
    } else {
      switchPosition = finalPosition;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-.8, -.3),
            colors: themeProvider.themeMode().gradientColors!,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            leftside(context, size, themeProvider),
            Positioned(
                top: continerPosition.dy - size.width * .1 / 2 - 5,
                left: continerPosition.dx - size.width * .1 / 2 - 5,
                child: Container(
                  width: size.width * .1 + 10,
                  height: size.height * .1 + 10,
                  decoration: BoxDecoration(
                      color: themeProvider.themeMode().switchBigColor!,
                      borderRadius: BorderRadius.circular(30)),
                )),
            Wire(initialPosition: intialPosition, toOffSet: switchPosition),
            AnimatedPositioned(
              duration: Duration(microseconds: 0),
              top: switchPosition.dy - size.width * .1 / 2,
              left: switchPosition.dx - size.width * .1 / 2,
              child: Draggable(
                feedback: Container(
                  width: size.width * .1,
                  height: size.width * .1,
                  decoration: BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                ),
                onDragEnd: (details) {
                  if (themeProvider.islighttheme) {
                    setState(() {
                      switchPosition = continerPosition;
                    });
                  } else {
                    setState(() {
                      switchPosition = finalPosition;
                    });
                  }
                  themeProvider.toogleThemedata();
                },
                onDragUpdate: (details) {
                  setState(() {
                    switchPosition = details.localPosition;
                  });
                },
                child: Container(
                  width: size.width * .1,
                  height: size.width * .1,
                  decoration: BoxDecoration(
                      color: themeProvider.themeMode().thumbColor,
                      border: Border.all(
                          width: 5,
                          color: themeProvider.themeMode().switchColor!),
                      shape: BoxShape.circle),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SafeArea leftside(BuildContext context, Size size, ThemeProvider themeProvider) {
    return SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(DateTime.now().hour.toString(),
                    style: Theme.of(context).textTheme.displayLarge),
                SizedBox(
                    width: size.width * .2,
                    child: const Divider(
                      height: 0,
                      color: Colors.white,
                      thickness: 1,
                    )),
                Text(
                  DateTime.now().minute.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColors.white),
                ),
                const Spacer(),
                Text(
                  "Light Dark\nPersonal\nSwitch",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                  width: size.width * .2,
                  height: size.width * .2,
                  decoration: BoxDecoration(
                    color: themeProvider.themeMode().switchColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.nights_stay_outlined,
                    size: 50,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(
                    width: size.width * .2,
                    child: const Divider(
                      height: 0,
                      color: Colors.white,
                      thickness: 1,
                    )),
                Text(
                  "30\u00B0C",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: AppColors.white),
                ),
                Text("Clear", style: Theme.of(context).textTheme.titleLarge),
                Text(
                    DateFormat(
                      "EEEE",
                    ).format(DateTime.now()),
                    style: Theme.of(context).textTheme.titleLarge),
                Text(DateFormat("MMMM d").format(DateTime.now()),
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
          ));
  }
}
