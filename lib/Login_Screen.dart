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
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, size: SizeConfig.screenWidth / 30,),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.screenHeight / 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.screenWidth / 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 47, left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: SizeConfig.screenHeight / 15,
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(14)
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: SizeConfig.screenWidth / 30,
                              fontWeight: FontWeight.w700,
                            ),
                            prefixIcon: Container(
                              margin: EdgeInsets.symmetric(vertical: double
                                  .minPositive),
                              child: Icon(
                                Icons.mail_outline,
                                size: SizeConfig.screenWidth / 30,
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
                        margin: EdgeInsets.only(top: 12),
                        child: SizedBox(
                          width: double.infinity,
                          height: SizeConfig.screenHeight / 15,
                          child: TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(14)
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: SizeConfig.screenWidth / 30,
                                fontWeight: FontWeight.w700,
                              ),
                              prefixIcon: Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Icon(
                                  Icons.lock_outline,
                                  size: SizeConfig.screenWidth / 30,
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
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forget Password?",
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth / 40,
                                fontWeight: FontWeight.w200,
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
                  margin: EdgeInsets.only(top: 39, left: 20, right: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: SizeConfig.screenHeight / 20,
                    child: ElevatedButton(
                        onPressed: ()
                        {
                          Navigator.of(context).pushNamed(HomeScreen.id);
                        },


                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: SizeConfig.screenHeight / 30,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0C356A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: SizeConfig.screenHeight / 40,
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
                          'OR login with',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.screenHeight / 50,
                              fontWeight: FontWeight.w100),
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
                  margin: EdgeInsets.only(top: SizeConfig.screenHeight / 40),
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
                  margin: EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have account?",
                        style: TextStyle(
                          fontSize: SizeConfig.screenHeight / 50,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(SignUpScreen.id);
                          },
                          child: Text(
                            "create account",
                            style: TextStyle(
                              fontSize: SizeConfig.screenHeight / 50,
                              fontWeight: FontWeight.w100,
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
