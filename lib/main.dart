import 'package:flutter/material.dart';
import 'package:listen_music/core/configs/themes/app_colors.dart';
import 'package:listen_music/core/configs/themes/app_theme.dart';

import 'package:listen_music/presentation/splash/pages/splash.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


 main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref=await SharedPreferences.getInstance();
  bool isLightTheme=pref.getBool(SPref.islight)?? true;
  runApp( AppStart(isLightTheme: isLightTheme));
}
class AppStart extends StatelessWidget {
  const AppStart({super.key, required this.isLightTheme});
  final bool isLightTheme;

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(providers: [ChangeNotifierProvider(create: (_)=>ThemeProvider(islighttheme: isLightTheme))],child: MyApp());
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider=Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: themeProvider.themeData(),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
