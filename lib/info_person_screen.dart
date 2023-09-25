import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:flutter/material.dart';
import 'Home_Page/HomeScreen.dart';



class info_person_screen extends StatelessWidget {
  const info_person_screen({super.key});
  static String id = "info_person_screen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: SizeConfig.verticalBlock*70),
                  width: SizeConfig.horizontalBlock*104,
                  height: SizeConfig.horizontalBlock*104,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(117)
                  ),
                  child: Center(
                      child: Icon(Icons.perm_identity,size: SizeConfig.textRatio*24,color: Color(0xff5A5A5A),)),
                ),
              ),
             SizedBox(height: SizeConfig.verticalBlock*12,),
               Text("User name",style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.textRatio*18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),),
              SizedBox(height: SizeConfig.verticalBlock*16,),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.verticalBlock*52,left: SizeConfig.horizontalBlock*33,right: SizeConfig.horizontalBlock*33),
                child: Form(
                    child: Column(
                  children: [
                 TextFormField(
                   style: TextStyle(
                       color: Color(0xfF0C356A),
                       fontSize: SizeConfig.textRatio*18,
                       fontFamily: 'Poppins',
                       fontWeight: FontWeight.w600,

                   ),
                   autovalidateMode:AutovalidateMode.onUserInteraction,
                   keyboardType: TextInputType.name,
                   decoration: InputDecoration(
                       labelText: "University",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                       )
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
                 SizedBox(height: SizeConfig.verticalBlock*10,),

                    TextFormField(
                      style: TextStyle(
                          color: Color(0x7F0C356A),
                          fontSize: SizeConfig.textRatio*18,
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
                    SizedBox(height: SizeConfig.verticalBlock*10,),

                    TextFormField(
                      style: TextStyle(
                          color: Color(0x7F0C356A),
                          fontSize: SizeConfig.textRatio*18,
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
                    SizedBox(height: SizeConfig.verticalBlock*10,),

                    TextFormField(
                      style: TextStyle(
                          color: Color(0x7F0C356A),
                          fontSize: SizeConfig.textRatio*18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600 ),

                      autovalidateMode:AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "interesting",
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
                    SizedBox(height: SizeConfig.verticalBlock*10,),

                    TextFormField(
                      style: TextStyle(
                          color: Color(0x7F0C356A),
                          fontSize: SizeConfig.textRatio*18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600 ),

                      autovalidateMode:AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "gender",
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
                    SizedBox(height: SizeConfig.screenHeight/60,),
                  ],)),
              ),


              InkWell(
                child: Container(
                  margin:EdgeInsets.only(top: SizeConfig.verticalBlock*8.13 ,left: SizeConfig.horizontalBlock*33,right: SizeConfig.horizontalBlock*33),
                   child: Center(
                     child: Text("Continue",style: TextStyle(
                       color: Colors.white,
                       fontSize: SizeConfig.textRatio*14.64,
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
                  Navigator.of(context).pushNamed(HomeScreen.id);
                },
              )
          ],
          ),
        ),
      ),

    );
  }
}

