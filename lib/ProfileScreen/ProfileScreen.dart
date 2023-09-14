import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String id = "ProfileScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6E3F5),

      body: Column(
        
        children: [
          Container(
            margin: EdgeInsets.only(top: 63,right: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.menu,size: 30,)
              ],
            ),
          ),


          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 21,left: 23,right: 23),
            height: 281,
            width: 385,
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/Rectangle 665.png",height: 239,width: 177,),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
