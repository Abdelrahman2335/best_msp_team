import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'AI.dart';
import 'cyber_security.dart';
import 'mobileApp.dart';
class fildes extends StatefulWidget {
  const fildes({super.key});
  static String id='fildes';

  @override
  State<fildes> createState() => _fildesState();
}

class _fildesState extends State<fildes> {

  int SelectedIcon = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buttons(
              text: 'Data Science',
            ),
            buttons(
              text: 'Software Engineering',
            ),
            buttons(
              text: 'Information Technology',
            ),
            buttons(
              text: 'Information System',
            ),
            buttons(
              text: 'Artificial Intelligence',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return AI();
                }));
              },
            ),
            buttons(
              text: 'Machine Learning',
            ),
            buttons(
              text: 'Cyber Security',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return cyberSecurity();
                }));
              },
            ),
            buttons(
              text: 'Cloud Computing',
            ),
            buttons(
              text: 'Mobile App',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return mobileApp();
                }));
              },
            ),
            const SizedBox(
              height: 20,
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

class buttons extends StatelessWidget {
  buttons({this.text,this.onTap});
  String? text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 50,
        margin: EdgeInsets.only(left: 40,right: 40),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFFE0E0E0),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(text!,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),
      ),
    );
  }
}
