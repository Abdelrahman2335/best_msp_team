import 'package:best_msp_team/AdvertisementsScreen.dart';
import 'package:best_msp_team/CourseContent/CoursesScreens.dart';
import 'package:flutter/material.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';

class studentActivites extends StatelessWidget {
  studentActivites({super.key});

  static String id = "studentActivites";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        controller: ScrollController(),
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 14, right: 14),
                  padding: const EdgeInsets.only(left: 7, right: 7, top: 7),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: const Color(0xffA6A6A6))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(
                            "assets/images/studentActivitiesMain.png"),
                        height: 150,
                        width: 400,
                      ),
                      Image(
                        image: AssetImage("assets/images/studentActivity.png"),
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        'suggestion student activity',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(AdvertisementsScreen.id);
                          },
                            child: const Image(
                          image: AssetImage("assets/images/MSP.png"),
                          height: 125,
                        )),
                        const Center(
                            child: Text(
                          'MSP Tech Club',
                          style: TextStyle(fontSize: 15),
                        )),
                      ],
                    ),
                    const Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ThreeDos.png"),
                          height: 125,
                        ),
                        Center(
                            child: Text(
                          'THREE DOS',
                          style: TextStyle(fontSize: 15),
                        )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        Image(
                          image: AssetImage("assets/SA/images (1).jpeg"),
                          height: 125,
                        ),
                        Center(
                            child: Text(
                          '3A',
                          style: TextStyle(fontSize: 15),
                        )),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(Enactus.id);
                            },
                            child: Container(
                                child: const Image(
                              image: AssetImage("assets/SA/Enactus.png"),
                              height: 120,
                            ))),
                        const Center(
                            child: Text(
                          'Enacts',
                          style: TextStyle(fontSize: 15),
                        )),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        children: [
                          Image(
                            image: AssetImage("assets/SA/LifeOnMarsFEHU.jpg"),
                            height: 125,
                          ),
                          Center(
                              child: Text(
                            'FEHU',
                            style: TextStyle(fontSize: 15),
                          )),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  child: const Image(
                                image: AssetImage("assets/SA/SCCI.png"),
                                height: 120,
                              ))),
                          const Center(
                              child: Text(
                            'SCCI',
                            style: TextStyle(fontSize: 15),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
