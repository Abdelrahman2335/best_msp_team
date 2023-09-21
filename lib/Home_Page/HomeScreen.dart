import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/SettingScreen.dart';
import 'package:best_msp_team/student_activities/student_Activities.dart';
import 'package:flutter/material.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List courses = [
    {"Image 1": "assets/images/Google Logo.png"},
    {"Image 2": "assets/images/main.png"},
  ];

  List platforms = [
    {"PlatForm 1":"assets/platforms/Rectangle 640.png"},
    {"PlatForm 2":"assets/platforms/Rectangle 665.png"},
    {"PlatForm 3":"assets/platforms/Rectangle 664.png"},
    {"PlatForm 4":"assets/platforms/udemy.png"},
  ];
  List SA = [
    {"SA 1":"assets/SA/Rectangle 640.png"},
    {"SA 2":"assets/SA/Rectangle 665.png"},
    {"SA 3":"assets/SA/Rectangle 664.png"},
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
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.textRatio*32,
                      fontFamily: "Poppins")),
            ],
          ),
          actions: [
            Text("Settings",
                style:
                    TextStyle(
                        color: Color(0xFF0C356A),
                        fontFamily: "Poppins",
                        fontSize: SizeConfig.textRatio*16,
                      fontWeight: FontWeight.w400,
                    ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SettingScreen.id);
              },
              icon: Icon(Icons.settings_outlined,size: SizeConfig.textRatio*16,),
              color: Color(0xFF0C356A),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
                Container(
                  padding: const EdgeInsets.only(left: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffE1E1E1),
                  ),
                  child: TextFormField(
                    style: TextStyle(fontSize: SizeConfig.textRatio*16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",),
                    onTap: () {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search,size: SizeConfig.textRatio*16,color: Color(0xff5A5A5A),),
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
                                      fontSize: SizeConfig.textRatio*12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins")),

                            Spacer(),
                            Align(
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "View all",
                                      style: TextStyle(
                                          fontSize: SizeConfig.textRatio*12,
                                          fontFamily: "Poppins",
                                          color: Colors.black),
                                    )),
                              ),
                          ],
                        ),
                        Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: SizeConfig.verticalBlock*239,
                                  child: ListView.builder(
                                    itemCount: courses.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => InkWell(
                                      onTap: () {},
                                      child: Container(
                                          height: SizeConfig.verticalBlock * 239,
                                          width:  200,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
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
                                                    blurRadius: 8,
                                                    spreadRadius: 1.0)
                                              ]),
                                          margin: EdgeInsets.only(left: SizeConfig.horizontalBlock*7),
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
                                      fontSize: SizeConfig.textRatio*12,
                                      fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400)),

                            Spacer(),
                            Align(
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "View all",
                                      style: TextStyle(
                                          fontSize: SizeConfig.textRatio*12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    )),
                              ),
                          ],
                        ),

                        Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: SizeConfig.verticalBlock*93,
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
                                          margin: EdgeInsets.all(SizeConfig.horizontalBlock*12), // make some space around the image
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
                                      fontSize: SizeConfig.textRatio*12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins")),

                            Spacer(),
                            Align(
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(studentActivites.id);
                                    },
                                    child: Text(
                                      "View all",
                                      style: TextStyle(
                                          fontSize: SizeConfig.textRatio*12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    )),
                              ),
                          ],
                        ),

                        Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: SizeConfig.verticalBlock*123,
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
        bottomNavigationBar: NavigationBar(
          backgroundColor: Color(0xFFF5F5F5),
          selectedIndex: SelectedIcon,
          animationDuration: Duration(seconds: 1),
          indicatorColor: Color(0xFF0C356A),
          onDestinationSelected: (index) => setState(() => SelectedIcon = index),
          height: 82,
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
            },icon: Icon(Icons.topic_outlined,color: Colors.white,size: 30,)),
                label:'Topics',
            ),
            NavigationDestination(icon: Icon(Icons.person_outline,color: Colors.white,),
                label: "Home",
            ),
          ],
        ),
      ),
    );
  }
}