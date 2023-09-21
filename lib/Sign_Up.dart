import 'package:best_msp_team/Login_Screen.dart';
import 'package:best_msp_team/info_person_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Home_Page/Size_Config.dart';


class SignUpScreen extends StatefulWidget {
  static String id = "SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  bool isChecked = false;

  Future singin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email:
        _emailController.text.trim(), password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
            Container(
              margin: EdgeInsets.only(top: SizeConfig.verticalBlock*165),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SignUp",
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
              margin: EdgeInsets.only(top: SizeConfig.verticalBlock*12, left: SizeConfig.horizontalBlock*33, right: SizeConfig.horizontalBlock*33),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: SizeConfig.verticalBlock*57,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                          fontSize: SizeConfig.textRatio*12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                        ),
                        prefixIcon: Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Icon(
                            Icons.person_2_outlined,
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
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(14)
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: SizeConfig.textRatio*12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Icon(
                              Icons.email_outlined,
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
                    child: SizedBox(
                      width: double.infinity,
                      height: SizeConfig.verticalBlock*57,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: SizeConfig.textRatio*12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 8),
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
                    child: SizedBox(
                      width: double.infinity,
                      height: SizeConfig.verticalBlock*57,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                            fontSize: SizeConfig.textRatio*12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins"
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.lock_outline,
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
                  ),



                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box_outline_blank,size: SizeConfig.textRatio*8,color: Colors.black,),
                        SizedBox(
                          width: SizeConfig.horizontalBlock*6,
                        ),
                        Text(
                          "I agree to the terms and condition",
                          style: TextStyle(
                            fontSize: SizeConfig.textRatio*8,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: SizeConfig.verticalBlock*8.13, left: SizeConfig.horizontalBlock*33, right: SizeConfig.horizontalBlock*33),
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.verticalBlock*57,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(info_person_screen.id);
                    },
                    child: Text(
                      "SignUp",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.textRatio*14.64,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        color: Colors.white,
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
              margin: EdgeInsets.only(top: SizeConfig.verticalBlock*18,left: SizeConfig.horizontalBlock*18,right: SizeConfig.horizontalBlock*18),
              height: SizeConfig.verticalBlock*18,
              width: double.infinity,
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
                      'OR SignUp with',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.textRatio*11.87,
                          fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                      ),
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
                      fontSize: SizeConfig.textRatio*12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(LoginScreen.id);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: SizeConfig.textRatio*12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0C356A),
                          fontFamily: "Poppins",
                        ),
                      ))
                ],
              ),
            ),

          ],
        ),
      ),


    )
    );
  }
}
