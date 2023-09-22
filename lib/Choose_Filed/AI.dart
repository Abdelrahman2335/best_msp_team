import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';

import '../Home_Page/HomeScreen.dart';
import 'choose_filed.dart';
import 'package:flutter/material.dart';
import 'viewAll_AI.dart';

class AI extends StatefulWidget {
  const AI({super.key});
  static String id='AI';

  @override
  State<AI> createState() => _AIState();
}

class _AIState extends State<AI> {

  int SelectedIcon = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          controller: ScrollController(),
          children: [
            Column(
              children:[
                Container(
                  width: SizeConfig.horizontalBlock * 263,
                  height: SizeConfig.verticalBlock * 200,
                  child: Image(image: AssetImage("assets/images/AIMain.png"),),
                ),
                ListTile(
                  title: Text('courses on artificial intelligence',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                  trailing: Text('view all',style: TextStyle(fontSize: 13),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return viewAll_AI();
                    }));
                  },
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.verticalBlock * 200,
                      width: SizeConfig.horizontalBlock * 263,
                      padding: EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(image: AssetImage("assets/images/Advanced Al.png"),height: 150,),
                          Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                          Text('Advanced Al:Deep reinforcement learning in python',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
                        ],),
                    ),
                    Container(
                      width: SizeConfig.horizontalBlock * 263,
                      height: SizeConfig.verticalBlock * 200,
                      padding: EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(image: AssetImage("assets/images/machineLearning.png"),height: 150,),
                          Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                          Text('Machine learning',style: TextStyle(fontSize: 15),),
                        ],),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: SizeConfig.horizontalBlock * 263,
                      height: SizeConfig.verticalBlock * 200,
                      padding: EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(image: AssetImage("assets/images/NLp.png"),height: 150,),
                          Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                          Text('NLP',style: TextStyle(fontSize: 15),),
                        ],),
                    ),
                    Container(
                      width: SizeConfig.horizontalBlock * 263,
                      height: SizeConfig.verticalBlock * 200,
                      padding: EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(image: AssetImage("assets/images/speach.png"),height: 150,),
                          Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                          Text('speech',style: TextStyle(fontSize: 15),),
                        ],),
                    ),
                  ],
                ),
              ],
            ),
          ],
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
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(HomeScreen.id);

              },
              icon:
              Icon(
                Icons.home_outlined,
                color: Color(0xFF0C356A),
              )),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.topic_outlined,
              color:
              Colors.white,
              size: 30,
            ),
            label:'Topics',

          ),
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(ProfileScreen.id);

              },

              icon: Icon(Icons.person_outline,color: Color(0xFF0C356A)
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
  courses({this.Image1,this.Image2});
  ImageProvider? Image1;
  ImageProvider? Image2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: SizeConfig.horizontalBlock * 263,
        height: SizeConfig.verticalBlock * 200,
        padding: EdgeInsets.only(left: 7,right: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black,width: 1)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Image(image: AssetImage(Image1 as String),height: 150,),
            Image(image: AssetImage(Image2 as String ),height: 50,width: 50,)
          ],
        ),
      ),
    );
  }
}

