import 'package:best_msp_team/Home_Page/Size_Config.dart';
import 'package:best_msp_team/StartScreen/StartScreen.dart';
import 'package:flutter/material.dart';

class First_Screen extends StatefulWidget {
  @override
  _First_Screen createState() => _First_Screen();
  static String id = "First_Screen";

}

class _First_Screen extends State<First_Screen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Alignment> _animation;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController with a duration
    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Adjust the duration as needed
      vsync: this,
    );

    // Create an Animation that goes from bottom to center
    _animation = AlignmentTween(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
// <<<<<<< Login
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Stack(
                // Use a Stack to stack the two Align widgets
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: _animation.value,
                    child: Container(
                      child: Image(
                        image: const AssetImage("assets/images/SkillUp Yellow.png"),height: SizeConfig.screenHeight/2,
// =======
//     return Scaffold(
//       body: Center(
//         child: AnimatedBuilder(
//           animation: _controller,
//           builder: (context, child) {
//             return Stack(
//               // Use a Stack to stack the two Align widgets
//               alignment: Alignment.center,
//               children: [
//                 Align(
//                   alignment: _animation.value,
//                   child: Container(
//                     child: Image(
//                       image: AssetImage("assets/images/Untitled design.png"),height: SizeConfig.verticalBlock*173,width: SizeConfig.horizontalBlock*459,
//                     ),
//                   ),
//                 ),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: InkWell(
//                       onTap: (){
//                         Navigator.of(context).pushNamed(StartScreen.id);
//                       },
//                         child:  Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Text("Continue",style: TextStyle(color: Color(0xFF0C356A), fontSize: SizeConfig.textRatio*24 ,fontFamily: "Outfit",fontWeight: FontWeight.w400)),
//                               IconButton(onPressed: (){
//                                 Navigator.of(context).pushNamed(StartScreen.id);
//                               }, icon: Icon(Icons.arrow_forward,size: SizeConfig.textRatio*24  ,color: Color(0xFF0C356A)))
//                             ],
//                                 ),
// >>>>>>> master
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed(StartScreen.id);
                          },
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Text("Continue",style: TextStyle(color: const Color(0xFF0C356A), fontSize: SizeConfig.screenWidth/15 )),

                                  IconButton(onPressed: (){
                                    Navigator.of(context).pushReplacementNamed(StartScreen.id);
                                  }, icon: Icon(Icons.arrow_forward,size: SizeConfig.screenWidth/15 ,color: const Color(0xFF0C356A)))
                                ],
                                    ),
                          ),
                            ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
