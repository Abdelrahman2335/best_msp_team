import 'package:best_msp_team/Home_Page/HomeScreen.dart';
import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/Sign_Up.dart';
import 'package:best_msp_team/info_person_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'forget_password.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});
   static String id = "LoginScreen";


   @override
  State<LoginScreen> createState() => _LoginScreenState();
}






class _LoginScreenState extends State<LoginScreen> {

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  Future login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim()
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.verticalBlock*157),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.textRatio*32,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.verticalBlock*12, left: SizeConfig.verticalBlock*35, right: SizeConfig.verticalBlock*35),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: SizeConfig.verticalBlock*57,
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: SizeConfig.textRatio*12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                            prefixIcon: Container(
                              margin: EdgeInsets.symmetric(vertical: double.minPositive),
                              child: Icon(
                                Icons.mail_outline,
                                size: SizeConfig.textRatio*12,
                                color: Color(0xff5A5A5A),
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
                        margin: EdgeInsets.only(top: SizeConfig.verticalBlock*8),
                        child: SizedBox(
                          width: double.infinity,
                          height: SizeConfig.verticalBlock*57,
                          child: TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: SizeConfig.textRatio*12,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                              prefixIcon: Container(
                                margin: EdgeInsets.only(top: double.minPositive),
                                child: Icon(
                                  Icons.lock_outline,
                                  size: SizeConfig.textRatio*12,
                                  color: Color(0xff5A5A5A),
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
                        margin: EdgeInsets.only(top: SizeConfig.verticalBlock*8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forget Password?",
                              style: TextStyle(
                                fontSize: SizeConfig.textRatio*10,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                color: Color(0xFF0C356A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.verticalBlock*8.13, left: SizeConfig.horizontalBlock*35, right: SizeConfig.horizontalBlock*35),
                  child: SizedBox(
                    width: double.infinity,
                    height: SizeConfig.verticalBlock*57,
                    child: ElevatedButton(
                        onPressed: ()
                        {
                          Navigator.of(context).pushNamed(HomeScreen.id);
                        },


                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: SizeConfig.textRatio*14.64,
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0C356A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.verticalBlock*22),
                  height: SizeConfig.verticalBlock*18,
                  width: SizeConfig.horizontalBlock*379.5,
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                            color: Colors.black,
                          )),
                      // Vertical line 1
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'OR login with',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.textRatio*11.87,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                            color: Colors.black,
                          )),
                      // Vertical line 2
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.verticalBlock*18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: SizeConfig.horizontalBlock*10),
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
                        padding:  EdgeInsets.only(left: SizeConfig.horizontalBlock*10),
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
                  margin: EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have account?",
                        style: TextStyle(
                          fontSize: SizeConfig.textRatio*12,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(SignUpScreen.id);
                          },
                          child: Text(
                            "create account",
                            style: TextStyle(
                              fontSize: SizeConfig.textRatio*12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0xFF0C356A),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }
}
