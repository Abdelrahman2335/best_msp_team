import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';

class studentActivites extends StatelessWidget {

   studentActivites({super.key});
  static String id="studentActivites";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded,size: SizeConfig.textRatio*24,),
          onPressed: () { Navigator.of(context).pop(); },
        ),
      ),
      body: ListView(
        controller: ScrollController(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(left: 14,right: 14),
                padding: EdgeInsets.only(left: 7,right: 7,top: 7),
                height: SizeConfig.verticalBlock*309,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1,color: Color(0xffA6A6A6))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Image(image: AssetImage("assets/images/studentActivitiesMain.png"),height: SizeConfig.verticalBlock*174,width:double.infinity,),
                    Image(image: AssetImage("assets/images/studentActivity.png"),height: SizeConfig.verticalBlock*29,width: SizeConfig.horizontalBlock*87,),
                    Text('suggestion student activity',style: TextStyle(fontSize: SizeConfig.textRatio*16,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
                  ],),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children:[
                      Image(image: AssetImage("assets/images/MSP.png"),height: SizeConfig.verticalBlock*123,),
                      Center(child: Text('MSP Tech Club',style: TextStyle(fontSize: SizeConfig.textRatio*16,fontWeight: FontWeight.w400,fontFamily: "Poppins"),)),
                    ],
                  ),
                  Column(
                    children:[
                      Image(image: AssetImage("assets/images/ThreeDos.png"),height: SizeConfig.verticalBlock*123,),
                      Center(child: Text('THREE DOS',style: TextStyle(fontSize: SizeConfig.textRatio*16,fontWeight: FontWeight.w400,fontFamily: "Poppins"),)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children:[
                      Image(image: AssetImage("assets/images/SCCI.png"),height: SizeConfig.verticalBlock*123,),
                      Center(child: Text('SCCI',style: TextStyle(fontSize: SizeConfig.textRatio*16,fontWeight: FontWeight.w400,fontFamily: "Poppins"),)),
                    ],
                  ),
                  Column(
                    children:[
                      Image(image: AssetImage("assets/images/Enactus.png"),height: SizeConfig.verticalBlock*123,),
                      Center(child: Text('Enacts',style: TextStyle(fontSize: SizeConfig.textRatio*16,fontWeight: FontWeight.w400,fontFamily: "Poppins"),)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffF5F5F5),
        padding: EdgeInsets.only(right: 50,left: 50),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                    Navigator.of(context).pushNamed(HomeScreen.id);
                  },
                      icon: Icon(Icons.home_outlined,color: Colors.white,size: 30,)),
                  Text('Home',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return fildes();
                  }));
                }, icon: Icon(Icons.topic_outlined,color: Color(0xff0C356A),size: 30,)),
                Text('Topics',style: TextStyle(color: Color(0xff0C356A)),),
              ],
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
