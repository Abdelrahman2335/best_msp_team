import 'package:flutter/material.dart';

class fildes extends StatelessWidget {
  const fildes({super.key});

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF6CB1E8);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none), )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(myColor),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 100.0),
                ),
              ),
              child: Text('Data Scince',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(myColor),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 60.0),
                ),
              ),
              child: Text('Software Engineering',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(myColor),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 50.0),
                ),
              ),
              child: Text('Information Techonlogy',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(myColor),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 65.0),
                ),
              ),
              child: Text('Information System',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(myColor),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),


                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 65.0),
                ),


              ),
              child: Text('Artificial Intelligence',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF6CB1E8)),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 80.0),
                ),
              ),
              child: Text('Machine Learning',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(myColor),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 100.0),
                ),
              ),
              child: Text('Cyber Security',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(myColor),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 90.0),
                ),
              ),
              child: Text('Cloud Computing',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            OutlinedButton(
              onPressed: (){} ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(myColor),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.black, width: 1.0),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 115.0),
                ),
              ),
              child: Text('Mobile App',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            Container(
              height: 30,

            ),
          ],
        ),
      ),
    );
  }
}
