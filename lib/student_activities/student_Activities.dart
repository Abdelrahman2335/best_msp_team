import 'package:flutter/material.dart';
import 'package:best_msp_team/Choose_Filed/choose_filed.dart';

class studentActivites extends StatelessWidget {

   studentActivites({super.key});
  static String id="studentActivites";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        actions: const [
          Icon(Icons.menu)
        ],
      ),
      body: ListView(
        controller: ScrollController(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(left: 14,right: 14),
                padding: EdgeInsets.only(left: 7,right: 7,top: 7),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1,color: Color(0xffA6A6A6))
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Image(image: AssetImage("assets/images/studentActivitiesMain.png"),height: 150,width:400,),
                    Image(image: AssetImage("assets/images/studentActivity.png"),height: 50,width: 50,),
                    Text('suggestion student activity',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  ],),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children:[
                      Image(image: AssetImage("assets/images/MSP.png"),height: 125,),
                      Center(child: Text('MSP Tech Club',style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                  Column(
                    children:[
                      Image(image: AssetImage("assets/images/ThreeDos.png"),height: 125,),
                      Center(child: Text('THREE DOS',style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children:[
                      Image(image: AssetImage("assets/images/SCCI.png"),height: 125,),
                      Center(child: Text('SCCI',style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                  Column(
                    children:[
                      Image(image: AssetImage("assets/images/Enactus.png"),height: 125,),
                      Center(child: Text('Enacts',style: TextStyle(fontSize: 15),)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffF5F5F5),
        padding: EdgeInsets.only(right: 50,left: 50),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 75,
              height: 75,
              padding: EdgeInsets.only(bottom: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff0C356A),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.home_outlined,color: Colors.white,size: 30,)),
                  Text('Home',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return fildes();
                  }));
                }, icon: Icon(Icons.topic_outlined,color: Color(0xff0C356A),size: 30,)),
                Text('Topics',style: TextStyle(color: Color(0xff0C356A)),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.person_2_outlined,color: Color(0xff0C356A),size: 30,),),
                Text('Profile',style: TextStyle(color: Color(0xff0C356A)),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
