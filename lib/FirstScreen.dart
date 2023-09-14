import 'package:best_msp_team/Login_Screen.dart';
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
      duration: Duration(seconds: 1), // Adjust the duration as needed
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
    final widget = MediaQuery.of(context).size.width ;
    final height = MediaQuery.of(context).size.height ;
    return Scaffold(
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
                      image: AssetImage("assets/Untitled design.png"),
                    ),
                  ),
                ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(LoginScreen.id);
                      },
                      child: Card(
                        child:  Row(
                            children: [


                              Text("Continue",style: TextStyle(color: Color(0xFF0C356A), fontSize: 20 )),

                              // SizedBox(width: 5,)
                          Icon(Icons.arrow_right_alt_rounded,size: 28,color: Color(0xFF0C356A),),

                            ],
                                ),
                        ),
                      ),

                        )

              ],
            );
          },
        ),
      ),
    );
  }
}
