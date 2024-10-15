import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listen_music/core/configs/themes/app_colors.dart';

class ThemeProvider with ChangeNotifier {
  bool islighttheme;
  ThemeProvider({required this.islighttheme});
  getCurrentStatusNavigationBarColor() {
    if (islighttheme) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
    }
    else{
      SystemChrome.setSystemUIOverlayStyle(  SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: AppColors.navcolor,
          systemNavigationBarIconBrightness: Brightness.light,));
    }
  }
  toogleThemedata(){}

  ThemeData themeData() {
    return ThemeData(
        brightness: islighttheme ? Brightness.light : Brightness.dark,
        scaffoldBackgroundColor:
            islighttheme ? AppColors.yellow : AppColors.black);
  }

  ThemeMode themeMode() {
    return ThemeMode(
        gradientColors: islighttheme
            ? [AppColors.yellow, AppColors.darkyellow]
            : [AppColors.black, AppColors.black],
        switchColor: islighttheme ? AppColors.black : AppColors.orange,
        thumbColor: islighttheme ? AppColors.orange : AppColors.black,
        switchBigColor: islighttheme
            ? AppColors.black.withOpacity(.1)
            : AppColors.grey.withOpacity(.3));
  }
}

class ThemeMode {
  List<Color>? gradientColors;
  Color? switchColor;
  Color? thumbColor;
  Color? switchBigColor;
  ThemeMode(
      {this.gradientColors,
      this.switchColor,
      this.thumbColor,
      this.switchBigColor});
}
