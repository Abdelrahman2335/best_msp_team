import 'package:best_msp_team/Choose_Filed/AI.dart';
import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:flutter/material.dart';

import 'course.dart';

class viewCourses extends StatelessWidget {
  viewCourses({super.key,required this.coursee});
  static String id='viewCourses';
  courseModel coursee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Stack(
              children: [
                Image(image: AssetImage(coursee.image!)),
                Positioned(
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },icon: Icon(Icons.arrow_back,color: Colors.white,size: SizeConfig.textRatio*24,),
                    ),)
              ],
            ),
          ),
          ListTile(
            title: Text('Courses on ${coursee.title}',style: TextStyle(fontSize: SizeConfig.textRatio*20,fontWeight: FontWeight.w400,fontFamily: "Inter"),),
            trailing: Text('view all',style: TextStyle(fontSize: SizeConfig.textRatio*12,fontFamily: "Poppins",fontWeight: FontWeight.w400),),
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              //   return viewAll_AI();
              // }));
            },
          ),
          SizedBox(height: SizeConfig.verticalBlock*7,),
          ListView.builder(itemBuilder: (context,index){
            return viewcourse(
                          image1: coursee.subjects[index].image1!,
                          image2: coursee.subjects[index].image2!,
                          text: coursee.subjects[index].text!);
                    },itemCount: coursee.subjects.length,
          ),
          // Row(
          //   children: [
          //     ListView.builder(itemBuilder: (context,index){
          //       return viewcourse(
          //           image1: coursee.subjects[index].image1!,
          //           image2: coursee.subjects[index].image2!,
          //           text: coursee.subjects[index].text!);
          //     },itemCount: coursee.subjects.length,
          //     ),
              // Container(
              //   height: 250,
              //   width: 175,
              //   padding: EdgeInsets.only(left: 7,right: 7),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       border: Border.all(color: Color(0xffA6A6A6),width: 1)
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children:[
              //       Image(image: AssetImage("assets/images/speach.png"),height: 150,),
              //       Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
              //       Text('speech',style: TextStyle(fontSize: 15),),
              //     ],),
              // ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class courseBox extends StatelessWidget {
  courseBox({super.key,required this.image1,required this.image2,required this.text});
  String image1;
  String image2;
  String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.verticalBlock*255,
        width: SizeConfig.horizontalBlock*200,
        padding: EdgeInsets.only(left: 7,right: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xffA6A6A6),width: 1)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Image(image: AssetImage(image1),height: SizeConfig.verticalBlock*139,),
            Image(image: AssetImage(image2),height: SizeConfig.verticalBlock*16,),
            Text(text,style: TextStyle(fontSize: SizeConfig.textRatio*15),),
          ],),
      ),
    );
  }
}

