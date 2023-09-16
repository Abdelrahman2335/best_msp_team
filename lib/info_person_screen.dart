
import 'package:flutter/material.dart';

import 'Home_Page/HomeScreen.dart';



class info_person_screen extends StatelessWidget {
  const info_person_screen({super.key});
  static String id = "info_person_screen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(start:103 ,top:70,end: 103 ),
            width: 104,
            height: 104,
            padding: EdgeInsetsDirectional.all(40),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(117)
            ),
            child: Icon(Icons.perm_identity),
          ),
         SizedBox(height: 12,),
           Text("Habiba Emad",style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),),
          SizedBox(height: 49,),

          Container( margin: EdgeInsetsDirectional.only(start: 33,end: 38),
            child: Form(child: Column(
              children: [
             TextFormField(
               style: TextStyle(
                   color: Color(0x7F0C356A),
                   fontSize: 18,
                   fontFamily: 'Poppins',
                   fontWeight: FontWeight.w600 ),

               autovalidateMode:AutovalidateMode.onUserInteraction,
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                   labelText: "University",
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)
               ),
               onEditingComplete: (){},
               onFieldSubmitted: (value){
                 print(value);
               },
               validator: (value) {
                 if (value!.isEmpty) {
                   return "Required";
                 }
                 return null;
               },
             ),
             SizedBox(height: 16,),

                TextFormField(
                  style: TextStyle(
                      color: Color(0x7F0C356A),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600 ),

                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Faculty",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)
                  ),
                  onEditingComplete: (){},
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16,),

                TextFormField(
                  style: TextStyle(
                      color: Color(0x7F0C356A),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600 ),

                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Age",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)
                  ),
                  onEditingComplete: (){},
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16,),

                TextFormField(
                  style: TextStyle(
                      color: Color(0x7F0C356A),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600 ),

                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Language",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)
                  ),
                  onEditingComplete: (){},
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16,),

                TextFormField(
                  style: TextStyle(
                      color: Color(0x7F0C356A),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600 ),

                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Skills",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)
                  ),
                  onEditingComplete: (){},
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 52,),






              ],)),
          ),


          InkWell(
            child: Container( margin: EdgeInsetsDirectional.only(start:33 ,end:38 ,),
               child: Center(
                 child: Text("Continue",style: TextStyle(
                   color: Colors.white,
                   fontSize: 14.64,
                   fontFamily: 'Poppins',
                   fontWeight: FontWeight.w600,
                 ),),
               ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:  Color(0xFF0C356A),
              ),
              width:359 ,
              height: 57,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreenBar.id);
            },
          )
      ],
      ),

    );
  }
}

