import 'package:flutter/material.dart';

class CourseContent extends StatelessWidget {

  String imagePath;
  bool flexibleDeadlines;
  String Textunderimage;
  bool online100;
  bool online50;
  bool offline;
  bool translated;
  bool level;
  bool timer;
  bool follow;
  bool figma;

  CourseContent({
    required this.imagePath,
    required this.offline,
    required this.online50,
    required this.online100,
    required this.flexibleDeadlines,
    required this.Textunderimage,
    required this.translated,
    required this.level,
    required this.timer,
    required this.follow,
    required this.figma,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          AppBar(),
          Container(

            margin: EdgeInsets.only(left: 14,right: 14,),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(
                    color:Colors.grey,
                    width: 1
                )
            ),
            width: double.infinity,
            height: 309,
            child: Column(
              children: [
                Container(
                  child: Image.asset(imagePath),
                  margin: EdgeInsets.all(14),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(

                      margin: EdgeInsets.all(10),
                      child: Visibility(
                          visible: imagePath.contains("Google")||imagePath.contains("Udacity"),
                          child: Image.asset("assets/images/coursera.png",width: 87,height: 29,)),
                    ),
                  ],
                ),

                Expanded(
                  child: Container(

                    margin: EdgeInsets.only(top: 8,left: 10),
                    child: Text(Textunderimage,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,

                      ),
                    ),
                  ),
                ),

              ],
            ),

          ),

          Container(
            margin: EdgeInsets.only(top: 20,left: 12,right: 12),
            child: Text(
              "About this professional certification ",
              style: TextStyle(
                fontSize: 16,
              ),

            ),
          ),

          Container(
            margin: EdgeInsets.all(20),
            child: Column(

              children: [
                Visibility(
                  visible: online50||online100,
                  child: Row(
                    children: [
                      Image.asset("assets/images/Frame4.png"),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              online100?"100 % Online":"50 % Online",
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            ),
                            Text(
                              "Learn with your own schedule",
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Color(0xFF5A5A5A)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: offline,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Frame4.png"),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "50 % offline",
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "Learn with us",
                                style: TextStyle(
                                    fontSize: 8
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: level,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Frame.png"),
                        // Image.asset("assets/images/Frame5.png"),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Beginner Level",
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "Learn with your own schedule",
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xFF5A5A5A)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: flexibleDeadlines,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Frame5.png"),
                        // Image.asset("assets/images/Frame5.png"),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Flexible deadlines",
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "Learn with your own schedule",
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xFF5A5A5A)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: translated,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Frame3.png"),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "English",
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "Subtitles:English",
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xFF5A5A5A)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: timer,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Frame2.png"),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Approx.14h to complete",
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: follow,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Frame6.png"),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "We follow you",
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "Learn with your own schedule",
                                style: TextStyle(
                                    fontSize: 8
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: figma,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Frame7.png"),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "by using figma app",
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "Learn with your own schedule",
                                style: TextStyle(
                                    fontSize: 8
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),




              ],
            ),
          ),




          Spacer(),
          Container(
            margin: EdgeInsets.only(top: 22, left: 20, right: 20,bottom: 30),
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Go to website",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0C356A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
