import 'package:best_msp_team/Choose_Filed/choose_filed.dart';
import 'package:best_msp_team/Choose_Filed/cyber_security.dart';
import 'package:best_msp_team/FirstScreen.dart';
import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:best_msp_team/StartScreen/StartScreen.dart';
import 'package:flutter/material.dart';
import 'Home_Page/Size_Config.dart';
import 'Login_Screen.dart';
import 'SettingScreen.dart';
import 'Sign_Up.dart';
import 'info_person_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),);
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      builder: DevicePreview.appBuilder,

      initialRoute: First_Screen.id,
      routes: {
        First_Screen.id: (BuildContext context) => First_Screen(),
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        fildes.id: (BuildContext context) => fildes(),
        HomeScreen.id: (BuildContext context) => HomeScreen(),
        SignUpScreen.id: (BuildContext context) => SignUpScreen(),
        info_person_screen.id: (BuildContext context) => info_person_screen(),
        SettingScreen.id: (BuildContext context) => SettingScreen(),
        StartScreen.id:(BuildContext context) => StartScreen(),
        ProfileScreen.id:(BuildContext context) => ProfileScreen(),
      },
    );
  }
}
