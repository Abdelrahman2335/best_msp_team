import 'package:best_msp_team/Choose_Filed/AI.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';
import 'package:best_msp_team/Choose_Filed/cyber_security.dart';
import 'package:best_msp_team/CourseContent/CoursesScreens.dart';
import 'package:best_msp_team/FirstScreen.dart';
import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:best_msp_team/StartScreen/StartScreen.dart';
import 'package:best_msp_team/setup/login.dart';
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
import 'Home_Page/layout.dart';
import 'SettingScreen.dart';
import 'setup/Sign_Up.dart';
import 'aboutScreen.dart';
import 'setup/forget_password.dart';
import 'setup/info_person_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ColorScheme _colorScheme = ColorScheme.fromSeed(
    seedColor: Color(0xFF0C356A),
    surface: Color.fromARGB(255, 221, 238, 243),
    brightness: Brightness.light,
  );

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: _colorScheme,
        scaffoldBackgroundColor: _colorScheme.surface,
        useMaterial3: true,
      ),
      initialRoute: Login.id,
      routes: {
        First_Screen.id: (BuildContext context) => First_Screen(),
        layOut.id: (BuildContext context) => layOut(),
        studentActivites.id: (BuildContext context) => studentActivites(),
        Login.id: (BuildContext context) => Login(),
        fildes.id: (BuildContext context) => const fildes(),
        cyberSecurity.id: (BuildContext context) => const cyberSecurity(),
        HomeScreen.id: (BuildContext context) => const HomeScreen(),
        SignUpScreen.id: (BuildContext context) => SignUpScreen(),
        info_person_screen.id: (BuildContext context) =>
            const info_person_screen(),
        SettingScreen.id: (BuildContext context) => const SettingScreen(),
        StartScreen.id: (BuildContext context) => const StartScreen(),
        ProfileScreen.id: (BuildContext context) => const ProfileScreen(),
        ForgetPassword.id: (BuildContext context) => const ForgetPassword(),
        AdvertisementsScreen.id: (BuildContext context) =>
            const AdvertisementsScreen(),
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
