import 'package:flutter/material.dart';

import 'Home_Page/HomeScreen.dart';
import 'Home_Page/Size_Config.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  static String id = "LoginScreen";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Color(0xFF5A5A5A),
                ),
                labelText: "Email",
                labelStyle: TextStyle(color: Color(0xFF0C356A), fontSize: 13),
                contentPadding: EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color(0xFF0C356A),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Color(0xFF5A5A5A),
                ),
                labelText: "Password",
                labelStyle: TextStyle(color: Color(0xFF0C356A), fontSize: 13),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye_outlined),
                ),
                contentPadding: EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color(0xFF0C356A),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: Color(0xFF0C356A), fontSize: 13),
                  ),
                ),
              ],
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
                )),
                // Vertical line 2
              ],
            ),
          ],
        ),
      ),
    );
  }
}
