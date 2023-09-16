import 'package:flutter/material.dart';
import 'AI.dart';
import 'cyber_security.dart';
import 'mobileApp.dart';
class fildes extends StatelessWidget {
  const fildes({super.key});
  static String id='fildes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buttons(
              text: 'Data Scince',
            ),
            buttons(
              text: 'Software Engineering',
            ),
            buttons(
              text: 'Information Techonlogy',
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
                IconButton(onPressed: (){}, icon: Icon(Icons.home_outlined,color: Color(0xff0C356A),size: 30,)),
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
                  IconButton(onPressed: (){},icon: Icon(Icons.topic_outlined,color: Colors.white,size: 30,)),
                  Text('Topics',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.person_2_outlined,color: Color(0xff0C356A),size: 30,),),
                Text('Profile',style: TextStyle(color: Color(0xff0C356A)),),
              ],
            ),
          ],
        ),
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
