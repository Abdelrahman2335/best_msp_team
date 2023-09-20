
import 'package:flutter/material.dart';

import 'SettingScreen.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  GlobalKey<FormState> formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Color(0xFFD6E3F3),

      body:SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(margin: EdgeInsetsDirectional.all(10),
            child: InkWell(child: Icon(Icons.arrow_back),
              onTap: (){
                Navigator.of(context).pushNamed(SettingScreen.id);
              },
            )
        ),

        Container(margin: EdgeInsetsDirectional.only(start: 36,end: 35,top:95 ),
           child:Form(
             key: formState ,
             child: Column(children: [



          TextFormField(
            decoration: InputDecoration(
              labelText: 'change skills',
              hintStyle: TextStyle( color: Colors.black.withOpacity(0.5),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)

            ),
            autovalidateMode:AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.name,
            maxLines: 3,
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

            SizedBox(height:33,),
            Container(
              padding: EdgeInsetsDirectional.only(start: 5,end: 5),
              child: Divider(
                color: Colors.black,

                thickness: 0.4,
              ),
            ),
           SizedBox(height: 40,),

             // Row(
             //   children: [
                 TextFormField(
                   decoration: InputDecoration(
                       labelText: 'new password',
                       hintStyle: TextStyle( color: Colors.black.withOpacity(0.5),
                         fontSize: 20,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w400,
                       ),
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)

                   ),
                   autovalidateMode:AutovalidateMode.onUserInteraction,
                   keyboardType: TextInputType.number,
                   onEditingComplete: (){},
                   onFieldSubmitted: (value){
                     print(value);
                   },

                   validator: (value) {
                     if (value!.isEmpty) {
                       return "Required";
                     }
                     if(value.length<6){
                       return "it shold be 6 or more ";
                     }
                   },

                 ),
                 SizedBox(width: 3,height: 20,),
                 TextFormField(
                   decoration: InputDecoration(
                       labelText: "confirm password",
                       hintStyle: TextStyle( color: Colors.black.withOpacity(0.5),
                         fontSize: 20,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w400,
                       ),
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)

                   ),
                   autovalidateMode:AutovalidateMode.onUserInteraction,
                   keyboardType: TextInputType.number,

                   onEditingComplete: (){},
                   onFieldSubmitted: (value){
                     print(value);
                   },
                   validator: (value) {
                     if (value!.isEmpty) {
                       return "Required";
                     }
                     if(value.length<6){
                       return "it shold be 6 or more ";
                     }
                   },

                 ),


             //   ],
             // ),
             SizedBox(height: 50,),
             TextFormField(
               decoration: InputDecoration(
                   labelText: 'change username',
                   hintStyle: TextStyle( color: Colors.black.withOpacity(0.5),
                     fontSize: 20,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w400,
                   ),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),)

               ),
               autovalidateMode:AutovalidateMode.onUserInteraction,
               keyboardType: TextInputType.name,
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
             SizedBox(height: 60,),


                  MaterialButton(
                   onPressed: (){
                     if(formState.currentState!.validate()){
                       print("valid");
                     }else{
                       print("not valid");
                     }

                   },
                   child: Container(padding: EdgeInsetsDirectional.only(start: 120,top: 10),
                     width: 300,height: 50,
                     decoration: BoxDecoration( color: Color(0xFF0C356A),
                     borderRadius: BorderRadius.circular(12),
                       border: Border.all(color: Colors.black),
                     ),
                     child: Text("Save",style: TextStyle(color: Colors.white,
                       fontSize: 24,
                       fontFamily: 'Poppins',
                       fontWeight: FontWeight.w500,
                     )),
                   ),

                 ),


       ],
          ),
          ),
        ),
      ],
        ),),
    ) ;
  }
}
