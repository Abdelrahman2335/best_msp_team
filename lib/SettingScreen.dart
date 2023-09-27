import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'aboutScreen.dart';
import 'package:best_msp_team/aboutScreen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen ({super.key});
  static String id="settingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// <<<<<<< alaa
//       body: Column(crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           InkWell(child: Container(margin: EdgeInsetsDirectional.only(top: SizeConfig.verticalBlock*20,start: SizeConfig.horizontalBlock*20),
//               child: Icon(Icons.arrow_back)),
//             onTap: (){
//               Navigator.of(context).pop();
//             },
//           ),
//           SizedBox(height: SizeConfig.verticalBlock*10,),
//           Center(
//             child: Container(
//               padding: EdgeInsetsDirectional.only(start: 16),
//               height:SizeConfig.verticalBlock*47 ,
//               width:SizeConfig.horizontalBlock*309 ,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(40),
//                 border: Border.all(width: 1,color: Colors.black),
//               ),
//               child: Row(
//                 children: [
//                   Icon(Icons.search,size: SizeConfig.textRatio*22.5,),
//                   SizedBox(width: SizeConfig.horizontalBlock*4,),
//                   Text("search", style: TextStyle(
//                     color: Colors.black,
//                     fontSize: SizeConfig.textRatio*16,
//                     fontFamily: 'Inter',
//                     fontWeight: FontWeight.w400,

//                   ),)
//                 ],
//               ),
//             ),
//           ),
//         SizedBox(height: SizeConfig.verticalBlock*10,),

//         InkWell(
//           onTap: (){

//           },
//           child: Center(
//             child: Container(
//               width:359 ,
//               height:SizeConfig.verticalBlock*57 ,

//               child: Center(
//                 child: Text("Logout", style: TextStyle(
//                   color: Colors.white,
//                   fontSize: SizeConfig.textRatio*24,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w600,

//                 ),),
//               ),
//               decoration: BoxDecoration(
//                 color:Color(0xFFFF0000),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//             ),
//           ),
//         ),
//           SizedBox(height:SizeConfig.verticalBlock*24 ,),

//           Container(
//             margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
//             child: Row(children: [
//               Icon(Icons.info_outline,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
//               SizedBox(width:25 ,),
//               InkWell(
//                 child: Text("About",style: TextStyle(
// =======
      body: SingleChildScrollView(
        child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // InkWell(child: Container(margin: EdgeInsetsDirectional.only(top: 14,start: 14),
            //     child: Icon(Icons.arrow_back)),
            //   onTap: (){
            //     Navigator.of(context).pop();
            //   },
            // ),
            // SizedBox(height: 20,),
            // Container(margin: EdgeInsetsDirectional.only(start: 48,end: 48,),
            //   padding: EdgeInsetsDirectional.only(start: 16,),
            //   height:42 ,
            //   width:320 ,
            //  child:
                Padding(
                  padding: const EdgeInsets.only(top: 50.0,right: 30,left: 30),
                  child: SizedBox(
                    

                    child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                          Icons.search_outlined),
                        hintText: ' Search',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(30),
                        ),

                    ),
                    autovalidateMode:AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.name,
                    onEditingComplete: (){},
                    onFieldSubmitted: (value){
                      print(value);
                    },
              ),
                  ),
                ),

            // ),
          SizedBox(height: 30,),

          InkWell(
            onTap: (){

            },
            child: Container(margin: EdgeInsetsDirectional.only(start: 35 ,end:35 ),
              width:350 ,
              height:57 ,
              padding: EdgeInsetsDirectional.only(start: 105,top: 14,),

              child: Text("Logout", style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,

              ),),
              decoration: BoxDecoration(
                color:Color(0xFFFF0000),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
            SizedBox(height:40 ,),

            Container(margin: EdgeInsetsDirectional.only(start: 20),
              child: Row(children: [
                Icon(Icons.info_outline,color:Colors.black.withOpacity(0.6000000238418579) ,),
                SizedBox(width:25 ,),
                InkWell(
                  child: Text("Change info",style: TextStyle(
                    color: Colors.black.withOpacity(0.6000000238418579),
                    fontSize: 32,
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
// >>>>>>> master
                  color: Colors.black.withOpacity(0.6000000238418579),
                  fontSize: SizeConfig.textRatio*32,
                  fontFamily: 'Abel',
                  fontWeight: FontWeight.w400,
                ),),
// <<<<<<< alaa
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  About()));

//                 },
//               ),
//             ],),
//           ),
//           SizedBox(height: 27,),

//           Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
//             child: Row(children: [
//               Icon(Icons.info_outline,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4 ,),
//               SizedBox(width:25 ,),
//               Text("Help",style: TextStyle(
//                 color: Colors.black.withOpacity(0.6000000238418579),
//                 fontSize: SizeConfig.textRatio*32,
//                 fontFamily: 'Abel',
//                 fontWeight: FontWeight.w400,
//               ),),
//             ],),
//           ),
//           SizedBox(height: 27,),

//           Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
//             child: Row(children: [
//               Icon(Icons.account_circle_outlined,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
//               SizedBox(width:25 ,),
//               Text("Prof.inf",style: TextStyle(
//                 color: Colors.black.withOpacity(0.6000000238418579),
//                 fontSize: SizeConfig.textRatio*32,
//                 fontFamily: 'Abel',
//                 fontWeight: FontWeight.w400,
//               ),),
//             ],),
//           ),
//           SizedBox(height: 27,),

//           Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
//             child: Row(children: [
//               Icon(Icons.lock_outline,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
//               SizedBox(width:25 ,),
//               Text("Privacy",style: TextStyle(
//                 color: Colors.black.withOpacity(0.6000000238418579),
//                 fontSize: SizeConfig.textRatio*32,
//                 fontFamily: 'Abel',
//                 fontWeight: FontWeight.w400,
//               ),),
//             ],),
//           ),
//           SizedBox(height: 27,),

//           Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
//             child: Row(children: [
//               Icon(Icons.g_translate_outlined,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
//               SizedBox(width:25 ,),
//               Text("Language",style: TextStyle(
//                 color: Colors.black.withOpacity(0.6000000238418579),
//                 fontSize: SizeConfig.textRatio*32,
//                 fontFamily: 'Abel',
//                 fontWeight: FontWeight.w400,
//               ),),
//             ],),
//           ),
//           SizedBox(height: 27,),

//           Container(margin: EdgeInsetsDirectional.only(start: SizeConfig.horizontalBlock*20),
//             child: Row(children: [
//               Icon(Icons.access_time_outlined,color:Color(0xffD9D9D9) ,size: SizeConfig.textRatio*34.4,),
//               SizedBox(width:25 ,),
//               Text("Time",style: TextStyle(
//                 color: Colors.black.withOpacity(0.6000000238418579),
//                 fontSize: SizeConfig.textRatio*32,
//                 fontFamily: 'Abel',
//                 fontWeight: FontWeight.w400,
//               ),),
//             ],),
//           ),
//           SizedBox(height: SizeConfig.verticalBlock*10,),


//            Row(mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                 Text(
//                   'More you see',
//                   style: TextStyle(
//                     color: Color(0xFF0C356A),
//                     fontSize: SizeConfig.textRatio*20,
//                     fontFamily: 'Inknut Antiqua',
//                     fontWeight: FontWeight.w400,
// =======
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
            SizedBox(height: 55,),
// >>>>>>> master


             Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Text(
                    'More you see',
                    style: TextStyle(
                      color: Color(0xFF0C356A),
                      fontSize: 20,
                      fontFamily: 'Inknut Antiqua',
                      fontWeight: FontWeight.w400,

                    ),
                  ),
// <<<<<<< alaa
//                 ),
//               ],
//             ),
//          ] ),


// =======
                ],
              ),

           ]
        ),
      ),
// >>>>>>> master
    );
  }
}
