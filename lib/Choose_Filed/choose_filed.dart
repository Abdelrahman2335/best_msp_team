import 'package:best_msp_team/Choose_Filed/course.dart';
import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import '../training.dart';
import 'AI.dart';
import 'cyber_security.dart';
import 'mobileApp.dart';
import 'constants.dart';
import 'viewCourses.dart';

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
//         child: ListView.builder(itemBuilder: (context,index){
//           return buttons(
//             text: coursesData[index].title,
//             onTap: (){
//               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>viewCourses(coursee: coursesData[index])));
//             },
//           );},itemCount: coursesData.length, // what is the reson of this pease of code ?
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
        height: SizeConfig.verticalBlock*57,
        margin: EdgeInsets.only(top: SizeConfig.verticalBlock*8.13,left: SizeConfig.horizontalBlock*36,right: SizeConfig.horizontalBlock*36),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFFE0E0E0),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(text!,
          style: TextStyle(color: Colors.black,
              fontSize: SizeConfig.textRatio*20,fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),),
      ),
    );
  }
}
