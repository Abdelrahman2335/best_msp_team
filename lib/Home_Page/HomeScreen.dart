import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List team = [
  {"name": "abdelrahman", "age":"18","fav":"mobile app"},
  {"name": "Amira", "age":"18","fav":"mobile app"},
  {"name": "alaa", "age":"18","fav":"mobile app"},
  {"name": "Mohamed", "age":"18","fav":"mobile app"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
          itemCount: team.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2 // this code is the different between List and Grid view.
            ),
            itemBuilder: (context, i){
              return Container(
                margin: EdgeInsets.all(15),
                child: ListTile(
                  tileColor: Colors.grey,
                  title: Text("Hello ${team[i]["name"]} are your age is ${team[i]["age"]} :)"),
                  subtitle: Text("Hello Again :) are you like ${team[i]["fav"]}"),

                ),
              );
            }
        ),
      ),
    );
  }
}
