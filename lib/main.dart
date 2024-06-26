import 'package:best_msp_team/Choose_Filed/AI.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';
import 'package:best_msp_team/Choose_Filed/cyber_security.dart';
import 'package:best_msp_team/CourseContent/CoursesScreens.dart';
import 'package:best_msp_team/FirstScreen.dart';
import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:best_msp_team/StartScreen/StartScreen.dart';
import 'package:best_msp_team/student_activities/student_Activities.dart';
import 'package:best_msp_team/testcode.dart';
import 'package:best_msp_team/training.dart';
import 'package:flutter/material.dart';
import 'AdvertisementsScreen.dart';
import 'Auth.dart';
import 'Choose_Filed/mobileApp.dart';
import 'Choose_Filed/viewAll_cyber.dart';
import 'Home_Page/All_Courses.dart';
import 'Home_Page/Size_Config.dart';
import 'Login_Screen.dart';
import 'SettingScreen.dart';
import 'Sign_Up.dart';
import 'aboutScreen.dart';
import 'forget_password.dart';
import 'info_person_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: First_Screen.id,
      routes: {
        First_Screen.id: (BuildContext context) => First_Screen(),
        studentActivites.id: (BuildContext context) => studentActivites(),
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        fildes.id: (BuildContext context) => const fildes(),
        cyberSecurity.id: (BuildContext context) => const cyberSecurity(),
        HomeScreen.id: (BuildContext context) => const HomeScreen(),
        SignUpScreen.id: (BuildContext context) => SignUpScreen(),
        info_person_screen.id: (BuildContext context) => const info_person_screen(),
        SettingScreen.id: (BuildContext context) => const SettingScreen(),
        StartScreen.id: (BuildContext context) => const StartScreen(),
        ProfileScreen.id: (BuildContext context) => const ProfileScreen(),
        ForgetPassword.id: (BuildContext context) => const ForgetPassword(),
        AdvertisementsScreen.id: (BuildContext context) => const AdvertisementsScreen(),
        ALL_Courses.id: (BuildContext context) => ALL_Courses(),
        viewAll_cyber.id: (BuildContext context) => const viewAll_cyber(),
        AI.id: (BuildContext context) => const AI(),
        Auth.id: (BuildContext context) => const Auth(),
        Google.id: (BuildContext context) => Google(),
        Udemy.id: (BuildContext context) => Udemy(),
        Udacity.id: (BuildContext context) => Udacity(),
        UI_UX.id: (BuildContext context) => UI_UX(),
        Enactus.id: (BuildContext context) => Enactus(),
        Training.id: (BuildContext context) => Training(),
        mobileApp.id: (BuildContext context) => const mobileApp(),
        testcode.id: (BuildContext context) => testcode(),
        About.id: (BuildContext context) => About(),
      },
    );
  }
}
