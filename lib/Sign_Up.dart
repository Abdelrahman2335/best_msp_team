import 'package:flutter/material.dart';

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
              margin: EdgeInsets.only(top: 64),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
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
                    height: 57,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(14)
                        ),
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Icon(
                            Icons.person,
                            size: 20,
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
                      height: 57,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(14)
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.email_outlined,
                              size: 20,
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
                      height: 57,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(14)
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.lock_outline,
                              size: 20,
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
                      height: 57,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(14)
                          ),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.lock_outline,
                              size: 20,
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
                            fontSize: 8,
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
                height: 55,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "SignUp",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
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
              height: 20,
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
                          fontSize: 12,
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
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 12,
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
