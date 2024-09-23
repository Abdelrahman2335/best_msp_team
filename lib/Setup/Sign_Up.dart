import 'package:best_msp_team/Setup/login.dart';
import 'package:best_msp_team/setup/info_person_screen.dart';
import 'package:best_msp_team/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import '../Home_Page/Size_Config.dart';

class SignUpScreen extends StatefulWidget {
  static String id = "SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailCon = TextEditingController();
  TextEditingController _passCon = TextEditingController();
  TextEditingController _nameCon = TextEditingController();
  TextEditingController _confirmCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.textRatio * 100,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textRatio * 28,
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomField(
                    label: "Full Name",
                    icon: Icons.person_2_outlined,
                    controller: _nameCon),
                SizedBox(
                  height: 20,
                ),
                CustomField(
                  label: "Email",
                  icon: Icons.email_outlined,
                  controller: _emailCon,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomField(
                    label: "Password",
                    icon: Icons.lock_outline,
                    controller: _passCon,
                    secure: true),
                SizedBox(
                  height: 20,
                ),
                CustomField(
                  label: "Confirm Password",
                  icon: Icons.lock_outline,
                  controller: _confirmCon,
                  secure: true,
                ),
                SizedBox(
                  height: 30,
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
                    Navigator.of(context)
                        .pushReplacementNamed(info_person_screen.id);
                  },
                  child: Center(
                    child: Text(
                      "Sign Up",
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
                        'Or Sign Up With',
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
                      "Already have account?",
                      style: TextStyle(
                        fontSize: SizeConfig.textRatio * 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(Login.id);
                        },
                        child: Text(
                          "Login",
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
      ),
    );
  }
}
