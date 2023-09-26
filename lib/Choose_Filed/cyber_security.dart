import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:flutter/material.dart';
import '../Home_Page/HomeScreen.dart';
import '../ProfileScreen/ProfileScreen.dart';
import 'choose_filed.dart';
import 'viewAll_cyber.dart';

class cyberSecurity extends StatefulWidget {
  const cyberSecurity({super.key});
  static String id='cyberSecurity';

  @override
  State<cyberSecurity> createState() => _cyberSecurityState();
}

class _cyberSecurityState extends State<cyberSecurity> {

  int SelectedIcon = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          controller: ScrollController(),
          children: [
            Column(
              children:[
                Container(
                  width: double.infinity,
                  child: Image(image: AssetImage("assets/images/main.png"),),
                ),
                ListTile(
                  title: Text('Courses on Cyber Security',style: TextStyle(fontSize: SizeConfig.textRatio*20,fontFamily: "Inter",fontWeight: FontWeight.w400),),
                  trailing: Text('view all',style: TextStyle(fontSize: SizeConfig.textRatio*12,fontFamily: "Poppins",fontWeight: FontWeight.w400),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return viewAll_cyber();
                    }));
                  },
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.verticalBlock*255,
                      width: SizeConfig.horizontalBlock*200,
                      padding: EdgeInsets.only(left: SizeConfig.horizontalBlock*7,top:SizeConfig.verticalBlock*7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Center(child: Image(image: AssetImage("assets/images/cwap.png"),height: SizeConfig.verticalBlock*139,)),
                            Image(image: AssetImage("assets/images/iti logo.png"),height: SizeConfig.verticalBlock*16,),
                            Text('OWASP top10(Web) 2021',style: TextStyle(fontSize: SizeConfig.textRatio*15,fontWeight: FontWeight.w400,fontFamily: "Poppins"),),
                          ],
                      ),
                    ),
                    Container(
                      height: SizeConfig.verticalBlock*255,
                      width: SizeConfig.horizontalBlock*200,
                      padding: EdgeInsets.only(top: SizeConfig.verticalBlock*7,left: SizeConfig.horizontalBlock*7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Center(child: Image(image: AssetImage("assets/images/ethical hacking.png"),height: SizeConfig.verticalBlock*139,)),
                              Image(image: AssetImage("assets/images/iti logo.png"),height: SizeConfig.verticalBlock*16,),
                              Text('Ethical Hacking',style: TextStyle(fontSize: SizeConfig.textRatio*15,fontWeight: FontWeight.w400,fontFamily: "Poppins"),),
                            ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.verticalBlock*255,
                      width: SizeConfig.horizontalBlock*200,
                      padding: EdgeInsets.only(top: SizeConfig.verticalBlock*7,left: SizeConfig.horizontalBlock*7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Center(child: Image(image: AssetImage("assets/images/computer network.png"),height:  SizeConfig.verticalBlock*139,)),
                              Image(image: AssetImage("assets/images/coursera.png"),height: SizeConfig.verticalBlock*16,),
                              Text('Computer Network Fundamentals',style: TextStyle(fontSize: SizeConfig.textRatio*15,fontWeight: FontWeight.w400,fontFamily: "Poppins"),),
                            ],
                      ),
                    ),
                    Container(
                      height: SizeConfig.verticalBlock*255,
                      width: SizeConfig.horizontalBlock*200,
                      padding: EdgeInsets.only(top: SizeConfig.verticalBlock*7,left: SizeConfig.horizontalBlock*7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffA6A6A6),width: 1)
                      ),
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Center(child: Image(image: AssetImage("assets/images/malware analysis.png"),height: SizeConfig.verticalBlock*139,)),
                              Image(image: AssetImage("assets/images/coursera.png"),height: SizeConfig.verticalBlock*16,),
                              Text('Malware Analysis Fundamentals',style: TextStyle(fontSize: SizeConfig.textRatio*15,fontWeight: FontWeight.w400,fontFamily: "Poppins")),
                            ],
                      ),
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

class courses extends StatelessWidget {
  courses({this.Image1,this.Image2});
  ImageProvider? Image1;
  ImageProvider? Image2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        width: 175,
        padding: EdgeInsets.only(left: 7,right: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black,width: 1)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Image(image: AssetImage(Image1 as String),height: 150,),
            Image(image: AssetImage(Image2 as String ),height: 50,width: 50,)
          ],
        ),
      ),
    );
  }
}

