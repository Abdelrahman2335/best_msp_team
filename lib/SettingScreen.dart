import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen ({super.key});
  static String id = "SettingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(margin: EdgeInsetsDirectional.only(start: 48,end: 48,),
            padding: EdgeInsetsDirectional.only(start: 16),
            height:42 ,
            width:320 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(width: 1,color: Colors.black),
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 4,),
                Text("search", style: TextStyle(
                  color: Colors.black26,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,

                ),)
              ],
            ),
          ),
        SizedBox(height: 30,),

        Container(margin: EdgeInsetsDirectional.only(start: 35 ,end:35 ),
          width:350 ,
          height:57 ,
          padding: EdgeInsetsDirectional.only(start: 100,top: 14,),
          child: Text("Logout", style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          ),
          decoration: BoxDecoration(
            color: Color(0xFF0C356A),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
          SizedBox(height:40 ,),

          Container(margin: EdgeInsetsDirectional.only(start: 20),
            child: Row(children: [
              Icon(Icons.info_outline,color:Colors.black.withOpacity(0.6000000238418579) ,),
              SizedBox(width:25 ,),
              Text("About",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: 32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: 20),
            child: Row(children: [
              Icon(Icons.info_outline,color:Colors.black.withOpacity(0.6000000238418579) ,),
              SizedBox(width:25 ,),
              Text("Help",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: 32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: 20),
            child: Row(children: [
              Icon(Icons.account_circle_outlined,color:Colors.black.withOpacity(0.6000000238418579) ,),
              SizedBox(width:25 ,),
              Text("Prof.inf",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: 32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: 20),
            child: Row(children: [
              Icon(Icons.post_add_outlined,color:Colors.black.withOpacity(0.6000000238418579) ,),
              SizedBox(width:25 ,),
              Text("Posts",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: 32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: 20),
            child: Row(children: [
              Icon(Icons.lock_outline,color:Colors.black.withOpacity(0.6000000238418579) ,),
              SizedBox(width:25 ,),
              Text("Privacy",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: 32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: 20),
            child: Row(children: [
              Icon(Icons.g_translate_outlined,color:Colors.black.withOpacity(0.6000000238418579) ,),
              SizedBox(width:25 ,),
              Text("Language",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: 32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),

          Container(margin: EdgeInsetsDirectional.only(start: 20),
            child: Row(children: [
              Icon(Icons.access_time_outlined,color:Colors.black.withOpacity(0.6000000238418579) ,),
              SizedBox(width:25 ,),
              Text("Time",style: TextStyle(
                color: Colors.black.withOpacity(0.6000000238418579),
                fontSize: 32,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),),
            ],),
          ),
          SizedBox(height: 27,),


          Container(
            width: 166,
            height: 60,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'More you see',
                  style: TextStyle(
                    color: Color(0xFFFFC436),
                    fontSize: 20,
                    fontFamily: 'Inknut Antiqua',
                    fontWeight: FontWeight.w400,

                  ),
                ),
              ],
            ),
          ),
      ],),
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back,color: Colors.black,),
    ),
    );
  }
}
