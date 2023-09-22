import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:best_msp_team/SettingScreen.dart';
import 'package:flutter/material.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';

import 'All_Courses.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List courses = [
    {"courses 1":"assets/images/PYTHON.jpg"},
    {"courses 2":"assets/images/C.jpg"},
    {"courses 3":"assets/images/C++.png"},
    {"courses 4":"assets/images/Js.jpg"},
    {"courses 5":"assets/images/HTML.jpg"},
    {"courses 6":"assets/images/cs502.png"},
  ];

  List platforms = [
    {"PlatForm 1":"assets/platforms/Google.jpg"},
    {"PlatForm 2":"assets/platforms/Edx.png"},
    {"PlatForm 3":"assets/platforms/Udacity.png"},
    {"PlatForm 4":"assets/platforms/SCCI.png"},
    {"PlatForm 5":"assets/platforms/udemy.png"},
    {"PlatForm 6":"assets/platforms/coursera.jpg"},
    {"PlatForm 7":"assets/platforms/udemy.png"},
  ];
  List SA = [
    {"SA 1":"assets/SA/Rectangle 640.png"},
    {"SA 2":"assets/SA/Rectangle 665.png"},
    {"SA 3":"assets/SA/Rectangle 664.png"},
    {"SA 4":"assets/SA/images (1).jpeg"},
    {"SA 5":"assets/SA/380693087_256047330757734_4639446806930547013_n.jpg"},
  ];


  int SelectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: SizeConfig.screenHeight/10,
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back,size: SizeConfig.screenWidth/20,)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Explore",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth/20,
                      fontFamily: "Poppins")),
            ],
          ),
          actions: [
            Text("Settings",
                style:
                    TextStyle(
                        color: Color(0xFF0C356A),
                        fontFamily: "Poppins",
                        fontSize: SizeConfig.screenWidth/40,
                    ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SettingScreen.id);
              },
              icon: Icon(Icons.settings_outlined,size: SizeConfig.screenWidth/40,),
              color: Color(0xFF0C356A),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                  Container(
                    padding: const EdgeInsets.only(left: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: SizeConfig.screenWidth/40,),
                      onTap: () {},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search,size: SizeConfig.screenWidth/40,),
                        // focusedBorder: OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.blue))),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child:
                    Align(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Most popular courses",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 12,
                                        fontFamily: "Poppins")),

                              Spacer(),
                              Align(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pushNamed(ALL_Courses.id);
                                      },
                                      child: Text(
                                        "View all",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Poppins",
                                            color: Color(0xFF0C356A)),
                                      )),
                                ),
                            ],
                          ),
                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      itemCount: courses.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) => InkWell(
                                        onTap: () {},
                                        child: Container(
                                            height: SizeConfig.verticalBlock * 239,
                                            width: SizeConfig.horizontalBlock * 200,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.shade500,
                                                    offset: Offset(4.0, 4.0),
                                                    blurRadius: 3,
                                                    spreadRadius: 1.0,
                                                  ),
                                                  BoxShadow(
                                                      color: Colors.white,
                                                      offset: Offset(-4.0, -4.0),
                                                      blurRadius: 15,
                                                      spreadRadius: 1.0)
                                                ]),
                                            margin: EdgeInsets.all(7),
                                            child: Image(
                                                image: AssetImage(
                                              courses[index].values.first,
                                            )
                                            )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                ), // Courses

/******************************************************************************/
/******************************************************************************/

                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child:
                    Align(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Top learning  websites",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 12,
                                        fontFamily: "Poppins")),

                              Spacer(),
                              Align(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "View all",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Poppins",
                                            color: Color(0xFF0C356A)),
                                      )),
                                ),
                            ],
                          ),

                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: ListView.builder(
                                      itemCount: platforms.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) => InkWell(
                                        onTap: () {},
                                        child: Container(
                                            width: SizeConfig.horizontalBlock * 107,
                                            height: SizeConfig.verticalBlock * 93,
                                            // decoration: BoxDecoration(
                                            //     color: Colors.white,
                                            //     borderRadius:
                                            //         BorderRadius.circular(10),
                                            //     boxShadow: [
                                            //       BoxShadow(
                                            //         color: Colors.grey.shade500,
                                            //         offset: Offset(4.0, 4.0),
                                            //         blurRadius: 3,
                                            //         spreadRadius: 1.0,
                                            //       ),
                                            //       BoxShadow(
                                            //           color: Colors.white,
                                            //           offset: Offset(-4.0, -4.0),
                                            //           blurRadius: 15,
                                            //           spreadRadius: 1.0)
                                            //     ]),
                                            margin: EdgeInsets.all(10), // make some space around the image
                                            child: Image(
                                                image: AssetImage(
                                              platforms[index].values.first,
                                            )
                                            )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                ), //platForms

/******************************************************************************/
/******************************************************************************/

                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child:
                    Align(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Top Student Activities",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 12,
                                        fontFamily: "Poppins")),

                              Spacer(),
                              Align(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "View all",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Poppins",
                                            color: Color(0xFF0C356A)),
                                      )),
                                ),
                            ],
                          ),

                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: ListView.builder(
                                      itemCount: SA.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) => InkWell(
                                        onTap: () {},
                                        child: Container(
                                            width: SizeConfig.horizontalBlock * 107,
                                            height: SizeConfig.verticalBlock * 93,
                                            // decoration: BoxDecoration(
                                            //     color: Colors.white,
                                            //     borderRadius:
                                            //         BorderRadius.circular(10),
                                            //     boxShadow: [
                                            //       BoxShadow(
                                            //         color: Colors.grey.shade500,
                                            //         offset: Offset(4.0, 4.0),
                                            //         blurRadius: 3,
                                            //         spreadRadius: 1.0,
                                            //       ),
                                            //       BoxShadow(
                                            //           color: Colors.white,
                                            //           offset: Offset(-4.0, -4.0),
                                            //           blurRadius: 15,
                                            //           spreadRadius: 1.0)
                                            //     ]),
                                            margin: EdgeInsets.all(10), // make some space around the image
                                            child: Image(
                                                image: AssetImage(
                                              SA[index].values.first,
                                            )
                                            )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                ), //platForms


              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Color(0xFFF5F5F5),
          selectedIndex: SelectedIcon,
          animationDuration: Duration(seconds: 1),
          indicatorColor: Color(0xFF0C356A),
          onDestinationSelected: (index) => setState(() => SelectedIcon = index),
          height: 60,
          destinations: [
            NavigationDestination(
                icon:
            Icon(
                  Icons.home_outlined,
              color: Colors.white,
            ),
                label: "Home",
            ),
            NavigationDestination(icon: IconButton(
                onPressed: (){
              Navigator.of(context).pushNamed(fildes.id);

            },icon: Icon(Icons.topic_outlined,color: Color(0xFF0C356A),size: 30,)),
                label:'Topics',
            ),
            NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(ProfileScreen.id);

              }, icon: Icon(Icons.person_outline,color: Color(0xFF0C356A),)),
                label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}