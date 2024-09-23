
import 'package:flutter/material.dart';


class About extends StatefulWidget {
   About({super.key});
  static String id = "About";


  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  GlobalKey<FormState> formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFD6E3F3),
      body:SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor:
            const Color(0xFFD6E3F3),
          ),
        Container(margin: const EdgeInsetsDirectional.only(start: 36,end: 35,top:95 ),
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
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Required";
              }
              return null;
            },

          ),

            const SizedBox(height:33,),
            Container(
              padding: const EdgeInsetsDirectional.only(start: 5,end: 5),
              child: const Divider(
                color: Colors.black,

                thickness: 0.4,
              ),
            ),
           const SizedBox(height: 40,),

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
                   },

                   validator: (value) {
                     if (value!.isEmpty) {
                       return "Required";
                     }
                     if(value.length<6){
                       return "it shold be 6 or more ";
                     }
                     return null;
                   },

                 ),
                 const SizedBox(width: 3,height: 20,),
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
                   },
                   validator: (value) {
                     if (value!.isEmpty) {
                       return "Required";
                     }
                     if(value.length<6){
                       return "it should be 6 or more ";
                     }
                     return null;
                   },

                 ),


             //   ],
             // ),
             const SizedBox(height: 50,),
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
               },
               validator: (value) {
                 if (value!.isEmpty) {
                   return "Required";
                 }

                 return null;
               },

             ),
             const SizedBox(height: 60,),


                  MaterialButton(
                   onPressed: (){
                     if(formState.currentState!.validate()){
                     }else{
                     }

                   },
                   child: Container(padding: const EdgeInsetsDirectional.only(start: 120,top: 10),
                     width: 300,height: 50,
                     decoration: BoxDecoration( color: const Color(0xFF0C356A),
                     borderRadius: BorderRadius.circular(12),
                       border: Border.all(color: Colors.black),
                     ),
                     child: const Text("Save",style: TextStyle(color: Colors.white,
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
