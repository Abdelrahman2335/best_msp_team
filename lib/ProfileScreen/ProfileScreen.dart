import 'package:best_msp_team/Choose_Filed/choose_filed.dart';
import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../SettingScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String id = "ProfileScreen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  int SelectedIcon = 3;
  int numberOfProjects=5;
  int rate=90;

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
                Text("Settings",
                  style:
                  TextStyle(

                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SettingScreen.id);
                  },
                  icon: Icon(Icons.settings_outlined,size: 20,),
                  color: Colors.black,

                ),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Name",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black

                          ),
                        ),
                        Text("Mohame Gamal",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA4A4A4)

                          ),
                        ),

                        SizedBox(height: 8,),
                        Text("Language",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black

                          ),
                        ),
                        Text("english",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA4A4A4)

                          ),
                        ),

                        SizedBox(height: 8,),
                        Text("Age",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black

                          ),
                        ),
                        Text("20",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA4A4A4)

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Image.asset("assets/images/ProfileImage.png",)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(

            margin: EdgeInsets.only(top:10),
            height: 40,
            width: 230,
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(

              children: [

                Expanded(child:
                 Column(

                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("About",
                      style: TextStyle(
                        fontFamily: "Actor",
                        fontSize: 16,
                        color: Color(0xFFFFC436),
                        fontWeight: FontWeight.w400,
                      ),
                     )
                   ],

                 )

                ),
                Expanded(child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(

                        height: 14,
                        width: 100,
                        child: ElevatedButton(

                          onPressed: (){

                          },
                            child: Text(
                                "change photo",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Actor",
                                color: Colors.white
                              ),

                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0C356A),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            )
                        ),
                      )

                    ],


                  )

                )
              ],
            ),
          ),

          Row(
            children: [

              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top:30,left: 32,right: 23.5,),
                  width: 160,
                  height: 150,

                  color: Colors.white,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("$numberOfProjects"
                      ,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,

                        ),
                      ),
                      Text("projects Done"
                      ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFFD2CECE),

                        ),
                      ),
                    ],

                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top:30,left: 32,right: 23.5,),
                  width: 160,
                  height: 150,

                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("$rate%"
                        ,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,

                        ),
                      ),
                      Text("success rate"
                        ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFFD2CECE),

                        ),
                      ),
                    ],

                  ),
                ),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.only(top:35 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("More",
                  style: TextStyle(
                    fontFamily: "Actor",
                    fontSize: 24,
                    color: Color(0xFFFFC436),
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Icon(Icons.arrow_drop_down),
                )

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
          NavigationDestination(
            icon: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(fildes.id);

                },icon: Icon(Icons.card_travel_outlined,color: Color(0xFF0C356A),size: 30,)),
            label:'Training',
          ),
          NavigationDestination(icon: Icon(Icons.person_outline,color: Colors.white,),
            label: "Profile",
          ),
        ],
      ),

    );
  }
}
