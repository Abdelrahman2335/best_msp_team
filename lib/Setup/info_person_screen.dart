import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/widgets/custom_field.dart';
import 'package:flutter/material.dart';

import '../Home_Page/HomeScreen.dart';

class info_person_screen extends StatelessWidget {
  const info_person_screen({super.key});

  static String id = "info_person_screen";

  @override
  Widget build(BuildContext context) {
    TextEditingController uniCon = TextEditingController();
    TextEditingController facultyCon = TextEditingController();
    TextEditingController ageCon = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin:
                          EdgeInsets.only(top: SizeConfig.verticalBlock * 70),
                      width: SizeConfig.horizontalBlock * 104,
                      height: SizeConfig.horizontalBlock * 104,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(117)),
                      child: Center(
                          child: Icon(
                        Icons.perm_identity,
                        size: SizeConfig.textRatio * 30,
                        color: const Color(0xff5A5A5A),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.verticalBlock * 12,
                  ),
                  Text(
                    "User name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.textRatio * 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomField(
                    label: "University",
                    controller: uniCon,
                    icon: Icons.add,
                    dataScreen: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomField(
                    label: "Faculty",
                    controller: facultyCon,
                    icon: Icons.add,
                    dataScreen: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomField(
                    label: "Age",
                    controller: ageCon,
                    icon: Icons.add,
                    dataScreen: true,
                  ),
                  SizedBox(height: 20,),
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
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
