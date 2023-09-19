import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/Login_Screen.dart';
import 'package:best_msp_team/info_person_screen.dart';
import 'package:flutter/material.dart';

import 'Home_Page/Size_Config.dart';

class SignUpScreen extends StatelessWidget {
  static String id = "SignUpScreen";

  bool isChecked=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(

            children: [
            Container(
              margin: EdgeInsets.only(top: SizeConfig.screenHeight/40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.screenWidth/20,
                    ),
                  ),
                ],
              ),
            ),



            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: SizeConfig.screenHeight/15,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(14)
                        ),
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                          fontSize: SizeConfig.screenWidth/30,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Icon(
                            Icons.person,
                            size: SizeConfig.screenWidth/30,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        fillColor: Color(0xFFe1e1e1),
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      width: double.infinity,
                      height: SizeConfig.screenHeight/15,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(14)
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: SizeConfig.screenWidth/30,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.email_outlined,
                              size: SizeConfig.screenWidth/30,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          fillColor: Color(0xFFe1e1e1),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      width: double.infinity,
                      height: SizeConfig.screenHeight/15,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(14)
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: SizeConfig.screenWidth/30,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.lock_outline,
                              size: SizeConfig.screenWidth/30,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          fillColor: Color(0xFFe1e1e1),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: SizedBox(
                      width: double.infinity,
                      height: SizeConfig.screenHeight/15,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(14)
                          ),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                            fontSize: SizeConfig.screenWidth/30,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.lock_outline,
                              size: SizeConfig.screenWidth/30,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                          ),
                          fillColor: Color(0xFFe1e1e1),
                          filled: true,

                        ),
                      ),
                    ),
                  ),



                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text(
                          "I agree to the terms and condition",
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth/45,
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 22, left: 20, right: 20),
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight/20,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(info_person_screen.id);
                    },
                    child: Text(
                      "SignUp",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.screenHeight/40,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0C356A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    )),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 18),
              height: SizeConfig.screenHeight/40,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                        color: Colors.black,
                        indent: 20,
                      )),
                  // Vertical line 1
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'OR SignUp with',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.screenHeight/50,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                        color: Colors.black,
                        endIndent: 20,
                      )),
                  // Vertical line 2
                ],
              ),
            ),



            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage("assets/images/Google Logo.png"),
                        width: 65,
                        height: 65,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage("assets/images/Frame 182.png"),
                        width: 65,
                        height: 65,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: SizeConfig.screenHeight/50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(LoginScreen.id);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: SizeConfig.screenHeight/50,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0C356A),
                        ),
                      ))
                ],
              ),
            ),

          ],
        ),
      ),


    );
  }
}
