import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Container(
             margin: EdgeInsetsDirectional.only(start: 325,top: 10),
            child: Icon(Icons.arrow_forward,),
           ),
            SizedBox(height: 70,),
            Center(child: Text("Creat Your account.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),)),
            SizedBox(height: 10,),
             Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("Already have an account? "),
                 SizedBox(width:1,),
                 Text("Sign in",style: TextStyle(color: Colors.black54),)
               ],
             ),
            SizedBox(height: 35,),

           Container(child: Text("Full name"),
           padding: EdgeInsetsDirectional.only( start: 20),
           ),
            SizedBox(height:4,),
            Container(
              margin: EdgeInsetsDirectional.only(start: 15,end: 15),
              decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(width: 2,color: Colors.black12),
                borderRadius: BorderRadius.circular(20)
              ),
               height: 55,
              width: 500,
            ),
            SizedBox(height: 4,),
           Container(child: Text("Email address"),
             padding: EdgeInsetsDirectional.only(start: 20),
           ),
            SizedBox(height:4,),
            Container(
              margin: EdgeInsetsDirectional.only(start: 15,end: 15),
              decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(width: 2,color: Colors.black12),
                  borderRadius: BorderRadius.circular(20)
              ),
              height: 55,
              width: 500,
              child: Row(
                children: [
                
                Icon(Icons.mail_outline),
                SizedBox(width: 2,),
                Text("Example@gmail.com"),

              ],),
               padding: EdgeInsetsDirectional.only(start: 7),
            ),
            SizedBox(height:4,),
            Container(child: Text("Password"),
            padding: EdgeInsetsDirectional.only(start: 20),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: 15,end: 15),
              decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(width: 2,color: Colors.black12),
                  borderRadius: BorderRadius.circular(20)
              ),
              height: 55,
              width: 500,
              child:Row(children: [
                Icon(Icons.remove_red_eye_outlined),
                SizedBox(width: 6,),
                Text("...............",style: TextStyle(fontSize: 25),)
              ],),
             padding: EdgeInsetsDirectional.only(start: 7),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: 25,top: 70,end:25),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 2,color: Colors.black12),
                  borderRadius: BorderRadius.circular(20)
              ),
              height: 35,
              width: 500,

                 child: Center(child: Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 20),)),
            ),
               SizedBox(height: 70,),
            Row(
              children: [
                Container(margin: EdgeInsetsDirectional.only(start: 150),
                  child: Icon(Icons.g_mobiledata),
                ),
                SizedBox(width: 10,),
               Icon(Icons.apple)
            ],)
          ],)


      ),


    );
  }
}
