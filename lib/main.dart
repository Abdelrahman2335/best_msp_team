import 'package:best_msp_team/Choose_Filed/AI.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';
import 'package:best_msp_team/Choose_Filed/cyber_security.dart';
import 'package:best_msp_team/CourseContent/CourceContent.dart';
import 'package:best_msp_team/CourseContent/CoursesScreens.dart';
import 'package:best_msp_team/FirstScreen.dart';
import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:best_msp_team/StartScreen/StartScreen.dart';
import 'package:best_msp_team/student_activities/student_Activities.dart';
import 'package:best_msp_team/testcode.dart';
import 'package:flutter/material.dart';
import 'AdvertisementsScreen.dart';
import 'Auth.dart';
import 'Choose_Filed/viewAll_cyber.dart';
import 'Home_Page/All_Courses.dart';
import 'Home_Page/Size_Config.dart';
import 'Login_Screen.dart';
import 'SettingScreen.dart';
import 'Sign_Up.dart';
import 'forget_password.dart';
import 'info_person_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';



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


      initialRoute: HomeScreen.id,


      routes: {
        First_Screen.id: (BuildContext context) => First_Screen(),
        studentActivites.id:(BuildContext context)=> studentActivites(),
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        fildes.id: (BuildContext context) => fildes(),
        cyberSecurity.id: (BuildContext context) => cyberSecurity(),
        HomeScreen.id: (BuildContext context) => HomeScreen(),
        SignUpScreen.id: (BuildContext context) => SignUpScreen(),
        info_person_screen.id: (BuildContext context) => info_person_screen(),
        SettingScreen.id: (BuildContext context) => SettingScreen(),
        StartScreen.id:(BuildContext context) => StartScreen(),
        ProfileScreen.id:(BuildContext context) => ProfileScreen(),
        ForgetPassword.id:(BuildContext context) => ForgetPassword(),
        AdvertisementsScreen.id:(BuildContext context) => AdvertisementsScreen(),
        ALL_Courses.id:(BuildContext context) => ALL_Courses(),
        viewAll_cyber.id:(BuildContext context) => viewAll_cyber(),
        AI.id:(BuildContext context) => AI(),
        Auth.id:(BuildContext context) => Auth(),
        Google.id:(BuildContext context) => Google(),
        Udemy.id:(BuildContext context) => Udemy(),
        edx.id:(BuildContext context) => edx(),
        UI_UX.id:(BuildContext context) => UI_UX(),
        Enactus.id:(BuildContext context) => Enactus(),
        testcode.id:(BuildContext context) => testcode(),

      },
    );
  }
}
