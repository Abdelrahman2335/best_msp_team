import 'package:best_msp_team/CourseContent/CoursesScreens.dart';
import 'package:flutter/material.dart';

import 'Home_Page/Size_Config.dart';

class AdvertisementsScreen extends StatelessWidget {
  const AdvertisementsScreen({super.key});

  static String id = "AdvertisementsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              leading: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },

                  icon: Icon(Icons.arrow_back,size: 25),
                  ),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth / 21,
                  ),
                  onTap: () {},
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      size: SizeConfig.screenWidth / 20,
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.blue))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                width: 398,
                height: 168,
                child: Image(
                  image: AssetImage("assets/images/Rectangle 670.png"),
                  width: 20,
                  height: 20,
                )),
            SizedBox(height: 15,),
            // Container(
            //   child: Text(
            //     'Advertisements',
            //     style: TextStyle(
            //       color: Colors.black.withOpacity(0.5),
            //       fontSize: 20,
            //       fontFamily: 'Outfit',
            //       fontWeight: FontWeight.w400,
            //     ),
            //   ),
            // ),
            Container(
                child: Image(
              image: AssetImage("assets/images/Rectangle 673.png"),
            )),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 30,
                  ),
                  height: 38,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF0C356A),
                  ),
                  child: Center(
                    child: Text(
                      'Web',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 40,
                  ),
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF0C356A),
                  ),
                  child: Center(
                    child: Text(
                      'mobile app',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 30,
                  ),
                  //padding: EdgeInsetsDirectional.only(start:47),
                  height: 38,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF0C356A),
                  ),
                  child: Center(
                    child: Text(
                      'HR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(UI_UX.id);
                  },
                  child: Container(
                    margin: EdgeInsetsDirectional.only(
                      start: 40,
                    ),
                    height: 38,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF0C356A),
                    ),
                    child: Center(
                      child: Text(
                        'UI/UX',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 30,
                  ),
                  // padding: EdgeInsetsDirectional.only(start:47),
                  height: 38,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF0C356A),
                  ),
                  child: Center(
                    child: Text(
                      'visual id',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 40,
                  ),
                  // padding: EdgeInsetsDirectional.only(start:47),
                  height: 38,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF0C356A),
                  ),
                  child: Center(
                    child: Text(
                      'presentation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
