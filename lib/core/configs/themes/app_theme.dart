import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listen_music/core/configs/themes/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.navcolor,
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }
  }

  toogleThemedata() async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    if(islighttheme){
      sharedPreferences.setBool(SPref.islight, false);
      islighttheme=!islighttheme;
      notifyListeners();

    }
    else{
      sharedPreferences.setBool(SPref.islight, true);
      islighttheme=!islighttheme;
      notifyListeners();

    }
    getCurrentStatusNavigationBarColor( );
    notifyListeners();
  }

  ThemeData themeData() {
    return ThemeData(
        brightness: islighttheme ? Brightness.light : Brightness.dark,
        scaffoldBackgroundColor:
            islighttheme ? AppColors.yellow : AppColors.black,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.stickNoBills(
              fontSize: 70,
              fontWeight: FontWeight.w600,
              color: islighttheme ? AppColors.black : AppColors.orange),
          displayMedium: GoogleFonts.stickNoBills(
              fontSize: 70,
              fontWeight: FontWeight.w500,

              color: islighttheme ? AppColors.black : AppColors.orange),
        ));
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
