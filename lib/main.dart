import 'package:best_msp_team/FirstScreen.dart';
import 'package:flutter/material.dart';
import 'Login_Screen.dart';
import 'Sign_Up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SingUpScreen(),
    );
  }
}