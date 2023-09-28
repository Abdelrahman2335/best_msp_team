import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import '../Home_Page/HomeScreen.dart';
import 'choose_filed.dart';

class viewAll_mobile extends StatefulWidget {
  const viewAll_mobile({super.key});

  @override
  State<viewAll_mobile> createState() => _viewAll_mobileState();
}

class _viewAll_mobileState extends State<viewAll_mobile> {

  int SelectedIcon = 1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('courses on mobile app',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
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
                        Image(image: AssetImage("assets/images/andriodMatrial.png"),height: 150,),
                        Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                        Text('Android Material Design',style: TextStyle(fontSize: 15),),
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
                        Image(image: AssetImage("assets/images/completeReact.png"),height: 150,),
                        Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                        Text('The Complete React Native + Hooks Course',style: TextStyle(fontSize: 15),),
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
                        Image(image: AssetImage("assets/images/ionic.png"),height: 150,),
                        Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                        Text('Ionic - Build iOS, Android & Web Apps with Ionic and Angular Build Native iOS & Android',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
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
                        Image(image: AssetImage("assets/images/xamarin.png"),height: 150,),
                        Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                        Text('Xamarin Android: Learn to Build Native Android Apps With C#',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
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
                        Image(image: AssetImage("assets/images/build15.png"),height: 150,),
                        Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                        Text('Build 15 Augmented Reality (AR) apps with Unity & Vuforia',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
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
                        Image(image: AssetImage("assets/images/koltin.png"),height: 150,),
                        Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                        Text('Kotlin for Android & Java Developers: Clean Code on Android',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
                      ],),
                  ),
                ],
              ),
            ],
          ),
        ],
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
