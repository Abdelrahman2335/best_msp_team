import 'package:flutter/material.dart';

class AdvertisementsScreen extends StatelessWidget {
  const AdvertisementsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        Row(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
              padding: EdgeInsetsDirectional.only(start: 16),

              child: Icon(Icons.arrow_back)),
          SizedBox(width: 15,height: 8,),
          Container(margin: EdgeInsetsDirectional.only(top: 26,),
            padding: EdgeInsetsDirectional.only(start: 16),
            width: 300,
            height: 47,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xA5D6E3F3),
              border: Border.all(color: Colors.black)
            ),
            child: Row(children: [

             Icon(Icons.search_outlined),

              SizedBox(width: 4,),
              Text(
                'search',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],)
          ),
        ],),
        SizedBox(height:32 ,),
        Container(
          width: 398,
          height: 168,
          
          child: Image.asset("670.png"),


        ),
        SizedBox(height: 23,),

        Container(margin: EdgeInsetsDirectional.only(start:5),
          padding: EdgeInsetsDirectional.only(start:6),
          child: Text(
            'Advertisements',
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 24,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 22,),
        Container(
          width: 430,
          height: 281,
          child: Image.asset("673.png"),





        ),
        SizedBox(height: 32,),
        Row(children: [
          Container(margin: EdgeInsetsDirectional.only(start: 30,),
            padding: EdgeInsetsDirectional.only(start:29),
            height:38 ,
            width:130 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF0C356A),
            ),
            child: Text(
              'UU/IX',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(margin: EdgeInsetsDirectional.only(start: 40,),
            padding: EdgeInsetsDirectional.only(start:12),
            height:38 ,
            width:140 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF0C356A),
            ),
            child: Text(
              'marketting',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],),
        SizedBox(height: 23,),
        Row(children: [
          Container(margin: EdgeInsetsDirectional.only(start: 30,),
            padding: EdgeInsetsDirectional.only(start:47),
            height:38 ,
            width:130 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF0C356A),
            ),
            child: Text(
              'HR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(margin: EdgeInsetsDirectional.only(start: 40,),
            padding: EdgeInsetsDirectional.only(start:47),
            height:38 ,
            width:140 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF0C356A),
            ),
            child: Text(
              'Web',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],),
        SizedBox(height: 16,),
        Container(margin: EdgeInsetsDirectional.only(end: 22),
          child: Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text('Continue',
              style: TextStyle(
                color: Color(0xFF0C356A),
                fontSize: 24,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w600,
              ),),

            Icon(Icons.arrow_forward,size: 44,color: Color(0xFF0C356A))
          ],),
        )
          
          
          
          
        ],),
    );
  }
}
































