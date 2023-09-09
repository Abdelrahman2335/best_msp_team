import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  boxShadow: [],
                  gradient: LinearGradient(colors: <Color>[
                    Color(0xFF0078D4),
                    Color(0xFF96CFF2),
                  ]),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: EdgeInsets.only(left: 80, right: 80),
                //primary: Colors.white,
                textStyle: TextStyle(fontSize: 20),
                elevation: 70,
                shadowColor: Colors.black54,
              ),
              onPressed: () {},
              child: Text("Sign Up"),
            ),
          ],
        ),
      )),
    ));
  }
}
