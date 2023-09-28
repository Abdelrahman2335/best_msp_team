import 'package:flutter/material.dart';
import '../Home_Page/HomeScreen.dart';
import '../ProfileScreen/ProfileScreen.dart';
import '../training.dart';

class viewAll_cyber extends StatefulWidget {
  const viewAll_cyber({super.key});
  static String id = "viewAll_cyber";

  @override
  State<viewAll_cyber> createState() => _viewAll_cyberState();
}

class _viewAll_cyberState extends State<viewAll_cyber> {

  int SelectedIcon = 1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('courses on cyber security',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                    padding: const EdgeInsets.only(left: 7,right: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Image(image: AssetImage("assets/images/cwap.png"),height: 150,),
                        Image(image: AssetImage("assets/images/iti logo.png"),height: 50,width: 50,),
                        Text('OWASP top10(Web) 2021',style: TextStyle(fontSize: 15),),
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
                        Image(image: AssetImage("assets/images/ethical hacking.png"),height: 150,),
                        Image(image: AssetImage("assets/images/iti logo.png"),height: 50,width: 50,),
                        Text('Ethical Hacking',style: TextStyle(fontSize: 15),),
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
                        Image(image: AssetImage("assets/images/computer network.png"),height: 150,),
                        Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                        Text('Computer Network Fundamentals',style: TextStyle(fontSize: 15),),
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
                        Image(image: AssetImage("assets/images/malware analysis.png"),height: 150,),
                        Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                        Text('Malware Analysis Fundamentals',style: TextStyle(fontSize: 15),),
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
                        Image(image: AssetImage("assets/images/networkSecurity.png"),height: 150,),
                        Image(image: AssetImage("assets/images/iti logo.png"),height: 50,width: 50,),
                        Text('Introduction to network security',style: TextStyle(fontSize: 15),),
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
                        Image(image: AssetImage("assets/images/secureSoftware.png"),height: 150,),
                        Image(image: AssetImage("assets/images/iti logo.png"),height: 50,width: 50,),
                        Text('Secure Software Development Lifecycle',style: TextStyle(fontSize: 15),),
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

          ),
          NavigationDestination(
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
