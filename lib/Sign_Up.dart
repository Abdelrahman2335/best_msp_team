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
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _email = "";
  String _password = "";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
                      "Sign Up",
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
                        labelText: "Full name",
                        hintStyle: TextStyle(

                          fontSize: SizeConfig.screenWidth / 20,
                          fontWeight: FontWeight.w700,
                        ),
                        prefixIcon: Icon(Icons.person_outline,color: Color(0xFF0C356A),size: 20,),

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
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,

                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          labelText: "Email",
                          hintStyle: TextStyle(

                            fontSize: SizeConfig.screenWidth / 20,
                            fontWeight: FontWeight.w700,
                          ),
                          prefixIcon: Icon(Icons.mail_outline_outlined,color: Color(0xFF0C356A),size: 20,),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          fillColor: Color(0xFFe1e1e1),
                          filled: true,
                        ),
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "Please Enter your Email";
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                            _email = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: SizeConfig.verticalBlock*8),
                    child: SizedBox(
                      width: double.infinity,
                      height: SizeConfig.verticalBlock*57,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          labelText: "Password",
                          hintStyle: TextStyle(
                            fontSize: SizeConfig.screenWidth / 20,
                            fontWeight: FontWeight.w700,
                          ),
                          prefixIcon: Icon(Icons.lock_outline,color: Color(0xFF0C356A),size: 20,),

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          fillColor: Color(0xFFe1e1e1),
                          filled: true,
                        ),
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "Please Enter your Password";
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                            _password = value;
                          });
                        },
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
                          labelText: " Confirm password",
                          hintStyle: TextStyle(
                            fontSize: SizeConfig.screenWidth / 20,
                            fontWeight: FontWeight.w700,
                          ),
                          prefixIcon: Icon(Icons.lock_outline,color: Color(0xFF0C356A),size: 20,),

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          fillColor: Color(0xFFe1e1e1),
                          filled: true,
                        ),
                      ),
                    ),
                  ),



                  Container(
                    margin: const EdgeInsets.only(top: 10),
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
                      Navigator.of(context).pushReplacementNamed(info_person_screen.id);
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
                      backgroundColor: const Color(0xFF0C356A),
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
                  const Expanded(
                      child: Divider(
                        color: Colors.black,
                      )),
                  // Vertical line 1
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                  const Expanded(
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
                      child: const Image(
                        image: AssetImage("assets/images/Google Logo.png"),
                        width: 55,
                        height: 55,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: InkWell(
                      onTap: () {},
                      child: const Image(
                        image: AssetImage("assets/images/Frame 182.png"),
                        width: 55,
                        height: 55,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
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
                          color: const Color(0xFF0C356A),
                          fontFamily: "Poppins",
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
