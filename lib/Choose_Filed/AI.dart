
import 'package:best_msp_team/Choose_Filed/course.dart';
import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/ProfileScreen/ProfileScreen.dart';
import '../Home_Page/HomeScreen.dart';
import '../training.dart';
import 'choose_filed.dart';
import 'package:flutter/material.dart';
import 'viewAll_AI.dart';


class AI extends StatefulWidget {
  const AI({super.key});
  static String id='AI';

  @override
  State<AI> createState() => _AIState();
}

class _AIState extends State<AI> {

  int SelectedIcon = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          controller: ScrollController(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                Stack(
                  children: [
                    Image.asset("assets/images/AIMain.png",width: double.infinity,),

                    Positioned(
                      top: SizeConfig.verticalBlock*10,
                      left: SizeConfig.horizontalBlock*10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                  ],


                ),
                ListTile(
                  title: Text('courses on ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                  trailing: Text('view all',style: TextStyle(fontSize: 13),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return viewAll_AI();
                    }));
                  },
                ),
                SizedBox(height: 20,),

                // ListView.builder(itemBuilder: (context,index){
                //   return viewcourse(
                //       image1: coursee.subjects[index].image1!,
                //       image2: coursee.subjects[index].image2!,
                //       text: coursee.subjects[index].text!);
                // },itemCount: coursee.subjects.length,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       height: 250,
                //       width: 175,
                //       padding: EdgeInsets.only(left: 7,right: 7),
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(8),
                //           border: Border.all(color: Color(0xffA6A6A6),width: 1)
                //       ),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children:[
                //           ListView.builder(itemBuilder: (context,index){
                //             return viewcourse(
                //                 image1: coursee.subjects[index].image1!,
                //                 image2: coursee.subjects[index].image2!,
                //                 text: coursee.subjects[index].text!);
                //           },itemCount: coursee.subjects.length,
                //           ),
                //         ],),
                //     ),
                    // Container(
                    //   height: 250,
                    //   width: 175,
                    //   padding: EdgeInsets.only(left: 7,right: 7),
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(8),
                    //       border: Border.all(color: Color(0xffA6A6A6),width: 1)
                    //   ),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children:[
                    //       Image(image: AssetImage("assets/images/machineLearning.png"),height: 150,),
                    //       Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                    //       Text('Machine learning',style: TextStyle(fontSize: 15),),
                    //     ],),
                    // ),
                //   ],
                // ),
                // SizedBox(height: 20,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       height: 250,
                //       width: 175,
                //       padding: EdgeInsets.only(left: 7,right: 7),
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(8),
                //           border: Border.all(color: Color(0xffA6A6A6),width: 1)
                //       ),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children:[
                //           Image(image: AssetImage("assets/images/NLp.png"),height: 150,),
                //           Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                //           Text('NLP',style: TextStyle(fontSize: 15),),
                //         ],),
                //     ),
                //     Container(
                //       height: 250,
                //       width: 175,
                //       padding: EdgeInsets.only(left: 7,right: 7),
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(8),
                //           border: Border.all(color: Color(0xffA6A6A6),width: 1)
                //       ),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children:[
                //           Image(image: AssetImage("assets/images/speach.png"),height: 150,),
                //           Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                //           Text('speech',style: TextStyle(fontSize: 15),),
                //         ],),
                //     ),
                //   ],
                // ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.verticalBlock * 200,
                      width: SizeConfig.horizontalBlock * 263,
                      padding: EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(image: AssetImage("assets/images/Advanced Al.png"),height: 150,),
                          Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                          Text('Advanced Al:Deep reinforcement learning in python',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),),
                        ],),
                    ),
                    Container(
                      width: SizeConfig.horizontalBlock * 263,
                      height: SizeConfig.verticalBlock * 200,
                      padding: EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(image: AssetImage("assets/images/machineLearning.png"),height: 150,),
                          Image(image: AssetImage("assets/images/udemy.png"),height: 50,width: 50,),
                          Text('Machine learning',style: TextStyle(fontSize: 15),),
                        ],),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: SizeConfig.horizontalBlock * 263,
                      height: SizeConfig.verticalBlock * 200,
                      padding: EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(image: AssetImage("assets/images/NLp.png"),height: 150,),
                          Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                          Text('NLP',style: TextStyle(fontSize: 15),),
                        ],),
                    ),
                    Container(
                      width: SizeConfig.horizontalBlock * 263,
                      height: SizeConfig.verticalBlock * 200,
                      padding: EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(image: AssetImage("assets/images/speach.png"),height: 150,),
                          Image(image: AssetImage("assets/images/coursera.png"),height: 50,width: 50,),
                          Text('speech',style: TextStyle(fontSize: 15),),
                        ],),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFF5F5F5),
        selectedIndex: SelectedIcon,
        animationDuration: Duration(seconds: 1),
        indicatorColor: Color(0xFF0C356A),
        onDestinationSelected: (index) => setState(() => SelectedIcon = index),
        height: 60,
        destinations: [
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(HomeScreen.id);

              },
              icon:
              Icon(
                Icons.home_outlined,
                color: Color(0xFF0C356A),
                size: 30,
              )),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.topic_outlined,
              color:
              Colors.white,
              size: 30,
            ),
            label:'Topics',

          ),
          NavigationDestination(
            icon: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(Training.id);

                },icon: Icon(Icons.card_travel_outlined,color: Color(0xFF0C356A),size: 30,)),
            label:'Training',
          ),
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(ProfileScreen.id);

              },

              icon: Icon(Icons.person_outline,color: Color(0xFF0C356A)
              )
          ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class viewcourse extends StatelessWidget {
  viewcourse({required this.image1,required this.image2,required this.text});
  final String image1;
  final String image2;
  final String text;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 250,
      width: 175,
      padding: EdgeInsets.only(left: 7,right: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffA6A6A6),width: 1)

//     return Scaffold(
//       body: Container(
//         width: SizeConfig.horizontalBlock * 263,
//         height: SizeConfig.verticalBlock * 200,
//         padding: EdgeInsets.only(left: 7,right: 7),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: Colors.black,width: 1)
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:[
//             Image(image: AssetImage(Image1 as String),height: 150,),
//             Image(image: AssetImage(Image2 as String ),height: 50,width: 50,)
//           ],
//         ),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Image(image: AssetImage(image1),height: 150,),
          Image(image: AssetImage(image2),height: 50,width: 50,),
          Text(text,style: TextStyle(fontSize: 15),),
        ],),
    );
  }
}

