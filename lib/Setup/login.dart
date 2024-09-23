import 'package:best_msp_team/widgets/custom_field.dart';
import 'package:flutter/material.dart';

import '../Home_Page/HomeScreen.dart';
import '../Home_Page/Size_Config.dart';
import 'Sign_Up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  static String id = "LoginScreen";

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController emailCon = TextEditingController();
TextEditingController passCon = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.textRatio * 120,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textRatio * 32,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomField(
                label: "Email",
                icon: Icons.mail_outline,
                controller: emailCon,
                isEmail: true,
              ),
              SizedBox(
                height: 18,
              ),
              CustomField(
                label: "Password",
                icon: Icons.lock_outline,
                controller: passCon,
                secure: true,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(color: Color(0xFF0C356A), fontSize: 10),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(12),
                  backgroundColor: Color(0xFF0C356A),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(HomeScreen.id);
                },
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                        color: Colors.black,
                      )),
                  // Vertical line 1
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Or Login With',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.textRatio * 11.87,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),

                  // Vertical line 2
                ],
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "G",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0C356A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "F",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0C356A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(7),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have account?",
                    style: TextStyle(
                      fontSize: SizeConfig.textRatio * 13,
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
                          fontSize: SizeConfig.textRatio * 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Color(0xFF0C356A),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
