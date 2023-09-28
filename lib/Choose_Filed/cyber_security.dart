import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/training.dart';
import 'package:flutter/material.dart';
import '../Home_Page/HomeScreen.dart';
import '../ProfileScreen/ProfileScreen.dart';
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
      appBar: AppBar(),
      body: ListView(
          controller: ScrollController(),
          children: [
            Column(
              children:[
                Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight/4,
                  child: const Image(image: AssetImage("assets/images/main.png"),),
                ),
                ListTile(
                  title: const Text('Courses on Cyber Security',style: TextStyle(fontSize: 20),),
                  trailing: const Text('view all',style: TextStyle(fontSize: 13),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return const viewAll_cyber();
                    }));
                  },
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.screenHeight/3.3,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          double localWidth=constrains.maxWidth;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Image(image: const AssetImage("assets/images/cwap.png"),height: localHeight/1.7,),
                            Image(image: const AssetImage("assets/images/iti logo.png"),height: localHeight/5,width: localWidth/3,),
                            const Text('OWASP top10(Web) 2021',style: TextStyle(fontSize: 15),),
                          ],);},
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight/3.3,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          double localWidth=constrains.maxWidth;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/images/ethical hacking.png"),height: localHeight/1.7,),
                              Image(image: const AssetImage("assets/images/iti logo.png"),height: localHeight/5,width: localWidth/3,),
                              const Text('Ethical Hacking',style: TextStyle(fontSize: 15),),
                            ],);},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.screenHeight/3.3,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          double localWidth=constrains.maxWidth;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/images/computer network.png"),height: localHeight/1.7,),
                              Image(image: const AssetImage("assets/images/coursera.png"),height: localHeight/5,width: localWidth/3,),
                              const Text('Computer Network Fundamentals',style: TextStyle(fontSize: 15),),
                            ],);},
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight/3.3,
                      width: SizeConfig.screenWidth/2-14,
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffA6A6A6),width: 1)
                      ),
                      child: LayoutBuilder(
                        builder:(context,constrains){
                          double localHeight=constrains.maxHeight;
                          double localWidth=constrains.maxWidth;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Image(image: const AssetImage("assets/images/malware analysis.png"),height: localHeight/1.7,),
                              Image(image: const AssetImage("assets/images/coursera.png"),height: localHeight/5,width: localWidth/3,),
                              const Text('Malware Analysis Fundamentals',style: TextStyle(fontSize: 15),),
                            ],);},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFFF5F5F5),
        selectedIndex: SelectedIcon,
        animationDuration: const Duration(seconds: 1),
        indicatorColor: const Color(0xFF0C356A),
        onDestinationSelected: (index) => setState(() => SelectedIcon = index),
        height: 60,
        destinations: [
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(HomeScreen.id);

              },
              icon:
              const Icon(
                Icons.home_outlined,
                color: Color(0xFF0C356A),
                size: 30,
              )),
            label: "Home",
          ),
          const NavigationDestination(
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

                },icon: const Icon(Icons.card_travel_outlined,color: Color(0xFF0C356A),size: 30,)),
            label:'Training',
          ),
          NavigationDestination(icon: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(ProfileScreen.id);

              },

              icon: const Icon(Icons.person_outline,color: Color(0xFF0C356A)
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
        padding: const EdgeInsets.only(left: 7,right: 7),
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

