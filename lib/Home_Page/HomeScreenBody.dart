import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});
  static String id = "HomeScreenBody";

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBar(),


    );
  }
}
