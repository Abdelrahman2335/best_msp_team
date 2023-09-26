import 'package:best_msp_team/Home_Page/Size_Config.dart';

import 'aboutScreen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen ({super.key});
  static String id="settingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(child: Container(margin: EdgeInsetsDirectional.only(top: SizeConfig.verticalBlock*20,start: SizeConfig.horizontalBlock*20),
              child: Icon(Icons.arrow_back)),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: SizeConfig.verticalBlock*10,),
          Center(
            child: Container(
              padding: EdgeInsetsDirectional.only(start: 16),
              height:SizeConfig.verticalBlock*47 ,
              width:SizeConfig.horizontalBlock*309 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 1,color: Colors.black),
              ),
              child: Row(
                children: [
                  Icon(Icons.search,size: SizeConfig.textRatio*22.5,),
                  SizedBox(width: SizeConfig.horizontalBlock*4,),
                  Text("search", style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.textRatio*16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,

                  ),)
                ],
              ),
            ),
          ),
        SizedBox(height: SizeConfig.verticalBlock*10,),

        InkWell(
          onTap: (){

          },
          child: Center(
            child: Container(
              width:359 ,
              height:SizeConfig.verticalBlock*57 ,

              child: Center(
                child: Text("Logout", style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.textRatio*24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,

                ),),
              ),
              decoration: BoxDecoration(
                color:Color(0xFFFF0000),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
          SizedBox(height:SizeConfig.verticalBlock*24 ,),

          Container(
            margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
            child: Row(children: [
              Icon(Icons.info_outline,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
              SizedBox(width:25 ,),
              InkWell(
                child: Text("About",style: TextStyle(
                  color: Colors.black.withOpacity(0.6000000238418579),
                  fontSize: SizeConfig.textRatio*32,
                  fontFamily: 'Abel',
                  fontWeight: FontWeight.w400,
                ),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  About()));

                },
              ),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
            child: Row(children: [
              Icon(Icons.info_outline,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4 ,),
              SizedBox(width:25 ,),
              Text("Help",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: SizeConfig.textRatio*32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
            child: Row(children: [
              Icon(Icons.account_circle_outlined,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
              SizedBox(width:25 ,),
              Text("Prof.inf",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: SizeConfig.textRatio*32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
            child: Row(children: [
              Icon(Icons.lock_outline,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
              SizedBox(width:25 ,),
              Text("Privacy",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: SizeConfig.textRatio*32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
            child: Row(children: [
              Icon(Icons.g_translate_outlined,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
              SizedBox(width:25 ,),
              Text("Language",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: SizeConfig.textRatio*32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
            child: Row(children: [
              Icon(Icons.access_time_outlined,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
              SizedBox(width:25 ,),
              Text("Time",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: SizeConfig.textRatio*32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: SizeConfig.verticalBlock*10,),


           Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text(
                  'More you see',
                  style: TextStyle(
                    color: Color(0xFF0C356A),
                    fontSize: SizeConfig.textRatio*20,
                    fontFamily: 'Inknut Antiqua',
                    fontWeight: FontWeight.w400,

                  ),
                ),
              ],
            ),
         ] ),


    );
  }
}
