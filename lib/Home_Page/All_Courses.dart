import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:flutter/material.dart';

class ALL_Courses extends StatefulWidget {
  ALL_Courses({super.key});
   static String id = "ALL_Courses";

  @override
  State<ALL_Courses> createState() => _ALL_SAState();
}

class _ALL_SAState extends State<ALL_Courses> {

  List all_courses = [
    {"courses 1":"assets/images/PYTHON.jpg"},
    {"courses 2":"assets/images/C.jpg"},
    {"courses 3":"assets/images/C++.png"},
    {"courses 4":"assets/images/Js.jpg"},
    {"courses 5":"assets/images/HTML.jpg"},
    {"courses 6":"assets/images/cs502.png"},
  ];
  List all_platforms = [

    {"PlatForm 1":"assets/platforms/Google.jpg"},
    {"PlatForm 2":"assets/platforms/Edx.png"},
    {"PlatForm 3":"assets/platforms/Udacity.png"},
    {"PlatForm 4":"assets/platforms/SCCI.png"},
    {"PlatForm 5":"assets/platforms/udemy.png"},
    {"PlatForm 6":"assets/platforms/coursera.jpg"},
    {"PlatForm 7":"assets/platforms/udemy.png"},

  ];
  List all_SA = [
    {"SA 1":"assets/SA/Rectangle 640.png"},
    {"SA 2":"assets/SA/Rectangle 665.png"},
    {"SA 3":"assets/SA/Rectangle 664.png"},
    {"SA 4":"assets/SA/images (1).jpeg"},
    {"SA 5":"assets/SA/LifeOnMarsFEHU.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  ListView(
        controller: ScrollController(),
        children: [
          Column(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 250,
                    width: 175,
                    padding: EdgeInsets.only(left: 7,right: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffA6A6A6),width: 1)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Image(image: AssetImage("assets/images/PYTHON.jpg"),height: 150,),
                        Image(image: AssetImage("assets/images/C.jpg"),height: 50,width: 50,),
                      ],),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 250,
                    width: 175,
                    padding: EdgeInsets.only(left: 7,right: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffA6A6A6),width: 1)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Image(image: AssetImage("assets/images/C++.png"),height: 150,),
                        Image(image: AssetImage("assets/images/Js.jpg"),height: 50,width: 50,),
                        Text('Ethical Hacking',style: TextStyle(fontSize: 15),),
                      ],),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 250,
                    width: 175,
                    padding: EdgeInsets.only(left: 7,right: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffA6A6A6),width: 1)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Image(image: AssetImage("assets/images/HTML.jpg"),height: 150,),
                        Image(image: AssetImage("assets/images/cs502.png"),height: 50,width: 50,),
                        Text('Computer Network Fundamentals',style: TextStyle(fontSize: 15),),
                      ],),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
