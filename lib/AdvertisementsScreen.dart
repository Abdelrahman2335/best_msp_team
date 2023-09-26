import 'package:flutter/material.dart';

class AdvertisementsScreen extends StatelessWidget {
  const AdvertisementsScreen({super.key});
  static String id = "AdvertisementsScreen";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(  // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70,right: 20,left: 20),
                  child: TextFormField(
                    decoration:
                    InputDecoration(
                        prefixIcon: Icon(Icons.search_outlined,color: Color(0xFF0C356A),),
                        hintText: ' Search',
                        hintStyle: TextStyle( color: Color(0xFF0C356A),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)

                    ),
                    autovalidateMode:AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.name,
                    onEditingComplete: (){},
                    onFieldSubmitted: (value){
                      print(value);
                    },
                  ),
                ),



          SizedBox(height:32 ,),
          Container(
            width: 398,
            height: 168,

            child: Image(
              image:
              AssetImage(
                  "assets/images/Rectangle 670.png"
              ),
            )

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
            child: Image(
              image:
              AssetImage(
                  "assets/images/Rectangle 673.png"
              ),
            )





          ),
          SizedBox(height: 32,),
          Row(children: [
            Container(margin: EdgeInsetsDirectional.only(start: 30,),
              padding: EdgeInsetsDirectional.only(start:33,top: 4),
              height:38 ,
              width:130 ,
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
            Container(margin: EdgeInsetsDirectional.only(start: 40,),
              padding: EdgeInsetsDirectional.only(start:12),
              height:38 ,
              width:140 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF0C356A),
              ),
              child: Text(
                'mobile app',
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
              //padding: EdgeInsetsDirectional.only(start:47),
              height:38 ,
              width:130 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF0C356A),
              ),
              child: Text(
                'project managment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(margin: EdgeInsetsDirectional.only(start: 40,),
              padding: EdgeInsetsDirectional.only(start:43,top: 4),
              height:38 ,
              width:140 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF0C356A),
              ),
              child: Text(
                'UI/UX',
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
               // padding: EdgeInsetsDirectional.only(start:47),
                height:38 ,
                width:130 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF0C356A),
                ),
                child: Text(
                  'visual id',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(margin: EdgeInsetsDirectional.only(start: 40,),
               // padding: EdgeInsetsDirectional.only(start:47),
                height:38 ,
                width:140 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF0C356A),
                ),
                child: Text(
                  'presentation',
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
          ),
          ],),
      ),
    );
  }
}
