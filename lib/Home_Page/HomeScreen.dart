import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List team = [
  // {"name": "abdelrahman", "age":"18","fav":"mobile app"},
  // {"name": "Amira", "age":"18","fav":"mobile app"},
  // {"name": "alaa", "age":"18","fav":"mobile app"},
  // {"name": "Mohamed", "age":"18","fav":"mobile app"},
  // ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Explore",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: "Poppins")),
              ],
            ),
            actions: [
              Text("Settings",
                  style:
                      TextStyle(color: Color(0xFF0C356A), fontFamily: "Poppins")),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings_outlined),
                color: Color(0xFF0C356A),
              ),
            ],

        ),
        body:  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: TextFormField(
                      onTap: () {},
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          // focusedBorder: OutlineInputBorder(
                          //     borderSide: BorderSide(color: Colors.blue))),
                    ),
                  ),
                ),
      ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,),
                  child: Column(
                    children: [
                    Align(
                      child: Column(
                        children: [

                            Row(
                              children: [
                                Text(
                                    "Most popular courses",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 12,
                                        fontFamily: "Poppins"
                                    )
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Align(
                                    child: TextButton(
                                        onPressed: (){},
                                        child: Text("View all",
                                          style: TextStyle(fontSize: 12,
                                              fontFamily:"Poppins",color: Color(0xFF0C356A)),
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      itemCount: 10,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) =>
                                          Container(
                                        height: SizeConfig.verticalBlock * 239,
                                        width: SizeConfig.horizontalBlock * 200,
                                        margin: EdgeInsets.all(18),
                                        child: (Image(
                                          image: AssetImage("assets/Untitled design.png"),
                                        )),
                                      ),),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                    ]
                  ),

                )
              ],
          ),

      ),

    );
  }
}
