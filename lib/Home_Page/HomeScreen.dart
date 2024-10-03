import 'package:best_msp_team/AdvertisementsScreen.dart';
import 'package:best_msp_team/CourseContent/CoursesScreens.dart';
import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/SettingScreen.dart';
import 'package:best_msp_team/student_activities/student_Activities.dart';
import 'package:best_msp_team/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import '../data_base/data_base.dart';
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
  TextEditingController searchCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context).textTheme.titleLarge,
            ),
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
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomField(
                  hint: "Search", icon: Icons.search, controller: searchCon),

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
                              style: Theme.of(context).textTheme.titleSmall),
                          const Spacer(),
                          Align(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(ALL_Courses.id);
                                },
                                child: Text("View all",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium)),
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
                                    dataSource[index] == 0
                                        ? Navigator.of(context)
                                            .pushNamed(Google.id)
                                        : null;
                                  },
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
                                                color: const Color(0xffA6A6A6),
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
                                            Image(
                                              image: AssetImage(
                                                  dataSource[index].platform),
                                              height: 40,
                                              width: 45,
                                            ),
                                            Text(
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,

                                              /// if the description more than 2 lines will show as ...
                                              dataSource[index].description,
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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

              SizedBox(
                height: 7,
              ),

                  Row(
                    children: [
                      Text("Top learning  websites",
                          style: Theme.of(context).textTheme.titleSmall),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemCount: platforms.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              if (platforms[index]["PlatForm 2"] != null) {
                                Navigator.of(context).pushNamed(Udemy.id);
                              } else if (platforms[index]["PlatForm 3"] !=
                                  null) {
                                Navigator.of(context).pushNamed(Udacity.id);
                              }
                            },
                            child: Container(
                                width: SizeConfig.horizontalBlock * 107,
                                height: SizeConfig.verticalBlock * 93,
                                margin: const EdgeInsets.all(10),
                                // make some space around the image
                                child: Image(
                                    image: AssetImage(
                                  platforms[index].values.first,
                                ))),
                          ),
                        ),
                      ),


              //platForms

/******************************************************************************/
/******************************************************************************/

                      Row(
                        children: [
                          Text("Top Student Activities",
                              style: Theme.of(context).textTheme.titleSmall),
                          const Spacer(),
                          Align(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(studentActivites.id);
                                },
                                child: Text(
                                  "View all",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                )),
                          ),
                        ],
                      ),
                      Column(
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
                                  } else if (StudentActivities[index]["SA 2"] !=
                                      null) {
                                    Navigator.of(context).pushNamed(Enactus.id);
                                  }
                                },
                                child: Container(
                                  width: SizeConfig.horizontalBlock * 107,
                                  height: SizeConfig.verticalBlock * 93,
                                  margin: const EdgeInsets.all(10),
                                  // make some space around the image
                                  child: Image(
                                    image: AssetImage(
                                      StudentActivities[index].values.first,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  //platForms
          ),
        ),
      ),
    );
  }
}