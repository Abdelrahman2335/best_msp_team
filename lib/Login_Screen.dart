import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String id = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:64),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Login",
                    style: TextStyle(
                      fontWeight:FontWeight.w600,
                      fontSize: 30,
                    ),
                ),



              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 47,left: 20,right: 20),
            child: Column(
              children: [

                SizedBox(
                  width: 359,
                  height: 57,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Icon(
                            Icons.mail_outline,
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
                  margin: EdgeInsets.only(top: 12),
                  child: SizedBox(
                    width: 359,
                    height: 57,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Icon(
                              Icons.mail_outline,
                            size: 20,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontSize: 10,
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
            margin: EdgeInsets.only(top: 39,left: 20,right:20),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text(
                      "Login",
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


          Container(
            margin: EdgeInsets.only(top: 20),
            height: 20,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(child: Divider(color: Colors.black,indent: 20,)), // Vertical line 1
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                      'OR login with',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                      ),

                  ),
                ),
                Expanded(child: Divider(color: Colors.black,endIndent: 20,)), // Vertical line 2
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    color: Color(0xFFe1e1e1),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                      onPressed: (){},

                      icon: Icon(Icons.facebook_outlined,color: Color(0xFF0078d4),size: 50,)


                  ),
                ),
                Container(

                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    color: Color(0xFFe1e1e1),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                      onPressed: (){},

                      icon: Icon(Icons.facebook_outlined,color: Color(0xFF0078d4),size: 50,)


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
                  Text("Don’t have account?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  ),

                  TextButton(
                      onPressed: (){},
                      child: Text(
                        "create account",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0C356A),

                        )
                        ,)

                  )
                ],

            ),
          )
        ],
      ),
    );
  }
}
