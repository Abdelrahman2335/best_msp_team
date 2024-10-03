import 'package:best_msp_team/Choose_Filed/choose_filed.dart';
import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/training.dart';
import 'package:flutter/material.dart';

import '../ProfileScreen/ProfileScreen.dart';

class layOut extends StatefulWidget {
   layOut({super.key});
   static String id = "layOut";


   @override
  State<layOut> createState() => _layOutState();
}

class _layOutState extends State<layOut> {

  int currentIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value){
          setState(() {
            currentIndex = value;
          });
        },
        controller: pageController,
        children: [
          HomeScreen(),
          fildes(),
          Training(),
          ProfileScreen(),
        ],

      ),
bottomNavigationBar: NavigationBar(

  elevation: 1,
    selectedIndex: currentIndex,
    onDestinationSelected: (value){

    setState(() {
      currentIndex = value;
      pageController.jumpToPage(value);
    });
    },

    destinations: [
  NavigationDestination(icon: Icon(Icons.home_outlined,), label: "Home",),
  NavigationDestination(icon: Icon(Icons.topic_outlined,), label: "Topic"),
  NavigationDestination(icon: Icon(Icons.card_travel_outlined,), label: "Training"),
  NavigationDestination(icon: Icon(Icons.person_outline,), label: "Profile"),
]),
    );
  }
}
