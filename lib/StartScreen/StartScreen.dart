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
              child: Image.asset("assets/images/Course app-pana 1.png"),
            margin: EdgeInsets.only(top: 110,left: 26,right: 26),
          ),

          Container(
            margin: EdgeInsets.only(top: 60),
            child: Text(
              "Improve Your Skills with us ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0C356A)
              ),

            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
                '''
Never chase opportunities.Let it come to you by
     creating value and building rare skillsets
                ''',
              style: TextStyle(

                fontSize: 10,
                fontWeight: FontWeight.w400,
                  color: Color(0xFF0C356A)

              ),
            ),
          ),



          Container(
            margin: EdgeInsets.only(top: 40,left: 20,right: 20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'LoginScreen');
                  },
                  child: Text(
                    "Start",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0C356A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
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
