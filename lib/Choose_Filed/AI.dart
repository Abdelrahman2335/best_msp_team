import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';

import '../Home_Page/HomeScreen.dart';
import 'choose_filed.dart';
import 'package:flutter/material.dart';
import 'viewAll_AI.dart';

class AI extends StatelessWidget {
  const AI({super.key});
  static String id='AI';
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
                  width: double.infinity,
                  height: 200,
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
                          Image(image: AssetImage("assets/images/Advanced Al.png"),height: 150,),
                          Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                          Text('Advanced Al:Deep reinforcement learning in python',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
                        ],),
                    ),
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
                          Image(image: AssetImage("assets/images/NLp.png"),height: 150,),
                          Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                          Text('NLP',style: TextStyle(fontSize: 15),),
                        ],),
                    ),
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
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffF5F5F5),
        padding: EdgeInsets.only(right: 50,left: 50),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pushNamed(HomeScreen.id);
                }, icon: Icon(Icons.home_outlined,color: Color(0xff0C356A),size: 30,)),
                Text('Home',style: TextStyle(color: Color(0xff0C356A)),),
              ],
            ),
            Container(
              width: 75,
              height: 75,
              padding: EdgeInsets.only(bottom: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff0C356A),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).pushNamed(fildes.id);
                  },icon: Icon(Icons.topic_outlined,color: Colors.white,size: 30,)),
                  Text('Topics',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pushNamed(ProfileScreen.id);
                }, icon: Icon(Icons.person_2_outlined,color: Color(0xff0C356A),size: 30,),),
                Text('Profile',style: TextStyle(color: Color(0xff0C356A)),),
              ],
            ),
          ],
        ),
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
        height: 250,
        width: 175,
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

