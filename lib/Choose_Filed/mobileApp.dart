import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import '../Home_Page/HomeScreen.dart';
import '../training.dart';
import 'viewAll_mobile.dart';

class mobileApp extends StatefulWidget {
  const mobileApp({super.key});
  static String id='mobileApp';

  @override
  State<mobileApp> createState() => _mobileAppState();
}

class _mobileAppState extends State<mobileApp> {

  int SelectedIcon = 1;

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
                  width: double.infinity,
                  height: 200,
                  child: const Image(image: AssetImage("assets/images/mobileAppMain.png"),),
                ),
                ListTile(
                  title: const Text('courses on mobile app',style: TextStyle(fontSize: 20),),
                  trailing: const Text('view all',style: TextStyle(fontSize: 13),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return const viewAll_mobile();
                    }));
                  },
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 250,
                      width: 175,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: const Column(
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
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: const Column(
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
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 250,
                      width: 175,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: const Column(
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
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: const Column(
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
              Colors.white,
              size: 30,
            ),
            label:'Topics',

          ),NavigationDestination(
            icon: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(Training.id);

                },icon: const Icon(Icons.card_travel_outlined,color: Color(0xFF0C356A),size: 30,)),
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
  courses({this.Image1,this.Image2});
  ImageProvider? Image1;
  ImageProvider? Image2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        width: 175,
        padding: const EdgeInsets.only(left: 7,right: 7),
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

