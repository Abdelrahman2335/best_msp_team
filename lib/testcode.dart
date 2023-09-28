
import 'package:flutter/material.dart';

class testcode extends StatelessWidget {
  testcode({super.key});
  static String id = "testcode";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Container(
                padding: EdgeInsetsDirectional.only(start: 16 ,top: 10),

                child: Icon(Icons.arrow_back),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),

            Container(
              width: 400,
              height: 200,
              child: Image(image: AssetImage("assets/test/09.png")),
            ),
            SizedBox(height:5,),
            Container(
              padding: EdgeInsetsDirectional.only(start: 16),
              child: Text("training about your interested",
                style: TextStyle(
                  color: Color(0xFF0C356A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height:27,),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/test/640.png"),
                      ),
                      Text("Learning MATLAB",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          //fontSize: 24,
                          fontFamily: 'Poppins',
                          // fontWeight: FontWeight.w100,
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 100,top: 20),
                        padding: EdgeInsetsDirectional.only(start:11,top: 5),
                        width: 80,
                        height:30,
                        decoration: BoxDecoration(
                            color:  Color(0x33000000),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("1h 13m",),
                      )
                    ],
                  ),

                ),SizedBox(width:5,),
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/test/78.png"),),
                      Text("JavaScript Essential Training",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          //fontSize: 24,
                          fontFamily: 'Poppins',
                          // fontWeight: FontWeight.w100,
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 100,top: 15),
                        padding: EdgeInsetsDirectional.only(start:11,top: 5),
                        width: 80,
                        height:30,
                        decoration: BoxDecoration(
                            color:  Color(0x33000000),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("5h 40m",),
                      )
                    ],
                  ),

                )

              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/test/55.png")),
                      Text("SQL Essential Training",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          //fontSize: 24,
                          fontFamily: 'Poppins',
                          // fontWeight: FontWeight.w100,
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 100,top: 20),
                        padding: EdgeInsetsDirectional.only(start:11,top: 5),
                        width: 80,
                        height:30,
                        decoration: BoxDecoration(
                            color:  Color(0x33000000),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("4h 26m",),
                      )
                    ],
                  ),

                ),SizedBox(width:5,),
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/test/89.png"),
                      ),
                      Text("R for Data Science: Analysis,\n Visualization",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          //fontSize: 24,
                          fontFamily: 'Poppins',
                          // fontWeight: FontWeight.w100,
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 100,),
                        padding: EdgeInsetsDirectional.only(start:11,top: 5),
                        width: 80,
                        height:30,
                        decoration: BoxDecoration(
                            color:  Color(0x33000000),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("2h 46m",),
                      )
                    ],
                  ),

                )

              ],
            ),





            SizedBox(height: 5,),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/test/399.png"),
                      ),
                      Text("Learning MATLAB",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          //fontSize: 24,
                          fontFamily: 'Poppins',
                          // fontWeight: FontWeight.w100,
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 100,top: 20),
                        padding: EdgeInsetsDirectional.only(start:11,top: 5),
                        width: 80,
                        height:30,
                        decoration: BoxDecoration(
                            color:  Color(0x33000000),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("1h 13m",),
                      )
                    ],
                  ),

                ),
                SizedBox(width:5,),
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/test/400.png"),
                      ),
                      Text("Learning MATLAB",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          //fontSize: 24,
                          fontFamily: 'Poppins',
                          // fontWeight: FontWeight.w100,
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 100,top: 20),
                        padding: EdgeInsetsDirectional.only(start:11,top: 5),
                        width: 80,
                        height:30,
                        decoration: BoxDecoration(
                            color:  Color(0x33000000),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("1h 13m",),
                      )
                    ],
                  ),

                )

              ],
            ),

          ],
        ),
      ),

    );
  }
}
