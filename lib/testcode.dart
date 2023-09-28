import 'package:best_msp_team/training.dart';
import 'package:flutter/material.dart';

import 'Home_Page/HomeScreen.dart';
import 'Home_Page/Size_Config.dart';
import 'ProfileScreen/ProfileScreen.dart';

class testcode extends StatefulWidget {
   testcode({super.key});
  static String id = "testcode";

  @override
  State<testcode> createState() => _testcodeState();
}

class _testcodeState extends State<testcode> {

  int SelectedIcon = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
          controller: ScrollController(),
          children: [
            Column(
              children:[
                Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight/4,
                  child: const Image(image: AssetImage("assets/test/09.png"),),
                ),
                ListTile(
                  title: Text(
                    'training about your interested',
                    style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.6)
                    ),
                  ),

                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.screenHeight/3.4,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/test/640.png"),height: localHeight/1.7,),
                              const Text("Learning MATLAB",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  //fontSize: 24,
                                  fontFamily: 'Poppins',
                                  // fontWeight: FontWeight.w100,
                                ),
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(start: 100,top: 30),
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
                          );
                          },
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight/3.4,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/test/78.png"),height: localHeight/1.7,),
                              const Text("JavaScript Essential Training",
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
                          );
                          },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.screenHeight/3.4,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/test/55.png"),height: localHeight/1.7,),
                              const Text("SQL Essential Training",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  //fontSize: 24,
                                  fontFamily: 'Poppins',
                                  // fontWeight: FontWeight.w100,
                                ),
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(start: 100,top: 40),
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
                          );
                          },
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight/3.4,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/test/89.png"),height: localHeight/1.7,),
                              const Text("R for Data Science: Analysis,\n Visualization",
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
                          );
                          },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.screenHeight/3.0,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/test/399.png"),height: localHeight/1.7,),
                              const Text("C Programming Basics: Flow Control,\nVariables, and Pointers",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  //fontSize: 24,
                                  fontFamily: 'Poppins',
                                  // fontWeight: FontWeight.w100,
                                ),
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(start: 100,bottom: 5),
                                padding: EdgeInsetsDirectional.only(start:11,top: 5),
                                width: 80,
                                height:30,
                                decoration: BoxDecoration(
                                    color:  Color(0x33000000),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text("3h 17m",),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight/3.0,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/test/400.png"),height: localHeight/1.7,),
                              const Text("MySQL Essential Training",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  //fontSize: 24,
                                  fontFamily: 'Poppins',
                                  // fontWeight: FontWeight.w100,
                                ),
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(start: 100,top: 40),
                                padding: EdgeInsetsDirectional.only(start:11,top: 5),
                                width: 80,
                                height:30,
                                decoration: BoxDecoration(
                                    color:  Color(0x33000000),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text("2h 3m",),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFFF5F5F5),
        selectedIndex: SelectedIcon,
        animationDuration: const Duration(seconds: 1),
        indicatorColor: const Color(0xFF0C356A),
        onDestinationSelected: (index) => setState(() => SelectedIcon = index),
        height: 60,
        destinations: [
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(HomeScreen.id);

              },
              icon:
              const Icon(
                Icons.home_outlined,
                color: Color(0xFF0C356A),
                size: 30,
              )),
            label: "Home",
          ),
          const NavigationDestination(
            icon: Icon(
              Icons.topic_outlined,
              color:
              Color(0xFF0C356A),
              size: 30,
            ),
            label:'Topics',

          ),

          NavigationDestination(
            icon: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(Training.id);

                },icon: const Icon(Icons.card_travel_outlined,color: Colors.white,size: 30,)),
            label:'Training',
          ),
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(ProfileScreen.id);

              },

              icon: const Icon(Icons.person_outline,color: Color(0xFF0C356A)
              )
          ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class courses extends StatelessWidget {
  courses({this.Image1, this.Image2});

  ImageProvider? Image1;
  ImageProvider? Image2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        width: 175,
        padding: const EdgeInsets.only(left: 7, right: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black, width: 1)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(Image1 as String), height: 150,),
            Image(image: AssetImage(Image2 as String), height: 50, width: 50,)
          ],
        ),
      ),
    );
  }
}