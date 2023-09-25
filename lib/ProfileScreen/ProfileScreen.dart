import 'package:best_msp_team/Choose_Filed/choose_filed.dart';
import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String id = "ProfileScreen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  int SelectedIcon = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6E3F5),

      body: Column(

        children: [
          Container(
            margin: EdgeInsets.only(top: 63,right: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.menu,size: 30,)
              ],
            ),
          ),


          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 21,left: 20,right: 23,bottom: 21,),
            height: 281,
            width: 385,
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/images/Rectangle 665.png",height: 247,width: 170,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFF5F5F5),
        selectedIndex: SelectedIcon,
        animationDuration: Duration(seconds: 1),
        indicatorColor: Color(0xFF0C356A),
        onDestinationSelected: (index) => setState(() => SelectedIcon = index),
        height: 60,
        destinations: [
          NavigationDestination(icon: IconButton(
              onPressed:(){
                Navigator.of(context).pushNamed(HomeScreen.id);
              },
            icon:
            Icon(
              Icons.home_outlined,
              color: Color(0xFF0C356A),
            )),
            label: "Home",
          ),
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(fildes.id);

              },icon: Icon(Icons.topic_outlined,color: Color(0xFF0C356A),size: 30,)),
            label:'Topics',
          ),
          NavigationDestination(icon: Icon(Icons.person_outline,color: Colors.white,),
            label: "Profile",
          ),
        ],
      ),

    );
  }
}
