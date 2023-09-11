import 'package:flutter/material.dart';

class First_Screen extends StatelessWidget {
  const First_Screen({super.key});
  static String id = "First_Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Image(
            image: AssetImage("assets/Untitled design.png"),)),
    );
  }
}
