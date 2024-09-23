import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/setup/Login_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});
  static String id = "Auth";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder <User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData /*have data?*/){
            return HomeScreen();
          }
          else{
            return LoginScreen();
          }
        },
      )
    );
  }
}
