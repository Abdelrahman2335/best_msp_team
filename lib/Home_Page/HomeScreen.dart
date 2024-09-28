import 'package:best_msp_team/AdvertisementsScreen.dart';
import 'package:best_msp_team/CourseContent/CoursesScreens.dart';
import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:best_msp_team/SettingScreen.dart';
import 'package:best_msp_team/student_activities/student_Activities.dart';
import 'package:flutter/material.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';
import '../data_base/data_base.dart';
import '../training.dart';
import 'All_Courses.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List platforms = [
    {"PlatForm 1": "assets/platforms/coursera.jpg"},
    {"PlatForm 2": "assets/platforms/Udemy.jpg"},
    {"PlatForm 3": "assets/platforms/Udacity.png"},
    {"PlatForm 4": "assets/platforms/365datascience.png"},
    {"PlatForm 5": "assets/platforms/Courssat.png"},
    {"PlatForm 6": "assets/platforms/Edx.png"},
  ];
  List StudentActivities = [
    {"SA 1": "assets/SA/Rectangle 640.png"},
    {"SA 2": "assets/SA/Rectangle 665.png"},
    {"SA 3": "assets/SA/LifeOnMarsFEHU.jpg"},
    {"SA 4": "assets/SA/Rectangle 664.png"},
    {"SA 5": "assets/SA/images (1).jpeg"},
  ];

  int SelectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Explore",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.screenHeight / 30,
                    fontFamily: "Poppins")),
          ],
        ),
        actions: [
          Text(
            "Settings",
            style: TextStyle(
              color: const Color(0xFF0C356A),
              fontFamily: "Poppins",
              fontSize: SizeConfig.screenWidth / 22,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SettingScreen.id);
            },
            icon: Icon(
              Icons.settings_outlined,
              size: SizeConfig.screenWidth / 20,
            ),
            color: const Color(0xFF0C356A),
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
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth / 21,
                  ),
                  onTap: () {},
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      size: SizeConfig.screenWidth / 20,
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.blue))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Align(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Most popular courses",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          const Spacer(),
                          Align(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(ALL_Courses.id);
                                },
                                child: const Text(
                                  "View all",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      color: Color(0xFF0C356A)),
                                )),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 240,
                              child: ListView.builder(
                                itemCount: dataSource.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => InkWell(
                                  onTap: () {
                                    dataSource[index] == 1
                                        ? Navigator.of(context)
                                            .pushNamed(Google.id)
                                        : null;
                                  },
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 220,
                                          width: 175,
                                          padding: const EdgeInsets.only(
                                              left: 7, right: 7, top: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xffA6A6A6),
                                                  width: 1)),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    dataSource[index].Image),
                                                height: 120,
                                              ),
                                              const Image(
                                                image: AssetImage(
                                                    "assets/images/coursera.png"),
                                                height: 40,
                                                width: 45,
                                              ),
                                              Text(
                                                dataSource[index].description,
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
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
                child: Align(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Top learning  websites",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          const Spacer(),
                          Align(
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
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
                                    onTap: () {
                                      if (platforms[index]["PlatForm 2"] !=
                                          null) {
                                        Navigator.of(context)
                                            .pushNamed(Udemy.id);
                                      } else if (platforms[index]
                                              ["PlatForm 3"] !=
                                          null) {
                                        Navigator.of(context)
                                            .pushNamed(Udacity.id);
                                      }
                                    },
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
                                        margin: const EdgeInsets.all(10),
                                        // make some space around the image
                                        child: Image(
                                            image: AssetImage(
                                          platforms[index].values.first,
                                        ))),
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
                child: Align(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Top Student Activities",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 12,
                                  fontFamily: "Poppins")),
                          const Spacer(),
                          Align(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(studentActivites.id);
                                },
                                child: const Text(
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
                                  itemCount: StudentActivities.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => InkWell(
                                    onTap: () {
                                      if (StudentActivities[index]["SA 1"] !=
                                          null) {
                                        Navigator.of(context)
                                            .pushNamed(AdvertisementsScreen.id);
                                      } else if (StudentActivities[index]
                                              ["SA 2"] !=
                                          null) {
                                        Navigator.of(context)
                                            .pushNamed(Enactus.id);
                                      }
                                      // if(StudentActivities[index]["url"] != null){
                                      //   _launchURL(StudentActivities[index]["url"]);
                                      // }
                                    },
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
                                        margin: const EdgeInsets.all(10),
                                        // make some space around the image
                                        child: Image(
                                            image: AssetImage(
                                          StudentActivities[index].values.first,
                                        ))),
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
    );
  }
}
//Future<void> _launchURL(String url) async {
//if (await canLaunch(url)) {
//await launch(url);
//} else {
// throw 'Could not launch $url';
//}
//}
