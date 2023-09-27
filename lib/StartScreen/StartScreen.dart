import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/Login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);
  static String id = "StartScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
              child: Image.asset("assets/images/Course app-pana 1.png",width: SizeConfig.horizontalBlock*376,height: SizeConfig.verticalBlock*376, ),
            margin: EdgeInsets.only(top: SizeConfig.horizontalBlock*187,left: SizeConfig.verticalBlock*26,right: SizeConfig.verticalBlock*26),
          ),

          Container(
            width: SizeConfig.screenWidth,
            margin: EdgeInsets.only(top: 60),
            child: Center(
              child: Text(
                "Improve Your Skills with us ",
                style: TextStyle(
                  fontSize: SizeConfig.textRatio*24,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0C356A)
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.verticalBlock*11),
            child: Text(
                '''
Never chase opportunities.Let it come to you by
  creating value and building rare skillsets
                ''',
              style: TextStyle(
                fontSize: SizeConfig.textRatio*12,
                fontWeight: FontWeight.w400,
                  color: Color(0xFF0C356A),
                  fontFamily: "Poppins",
              ),
            ),
          ),



          Container(
            margin: EdgeInsets.only(top: SizeConfig.verticalBlock*8.13,left: SizeConfig.horizontalBlock*35,right: SizeConfig.horizontalBlock*35),
            child: SizedBox(
              width: double.infinity,
              height: SizeConfig.verticalBlock*57,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context,'LoginScreen');
                  },
                  child: Text(
                    "Start",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: SizeConfig.textRatio*14.64,
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0C356A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                  )
              ),
            ),
          ),
        ],
      ),

    );
  }
}
