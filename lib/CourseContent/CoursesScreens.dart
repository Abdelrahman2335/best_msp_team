import 'package:best_msp_team/CourseContent/CourceContent.dart';
import 'package:flutter/material.dart';

class Google extends StatelessWidget {
  
    static const String id="google";
  @override
  Widget build(BuildContext context) {
    return CourseContent(
        imagePath: "assets/images/Google.png",
        offline: false,
        online50: false,
        online100: true,
        flexibleDeadlines: false,
        Textunderimage: "Google Data Analytics Professional Certificate",
        translated: true,
        level: true,
        timer: true,
        follow: false,
        figma: false

    );
  }
}

class Udemy extends StatelessWidget {
  static const String id="udemy";

  @override
  Widget build(BuildContext context) {
    return CourseContent(
        imagePath: "assets/images/Udemy.png",
        offline: false,
        online50: false,
        online100: true,
        flexibleDeadlines: true,
        Textunderimage: "Online courses - High quality courses",
        translated: false,
        level: true,
        timer: false,
        follow: true,
        figma: false

    );
  }
}


class edx extends StatelessWidget {
  static const String id="edx";

  @override
  Widget build(BuildContext context) {
    return CourseContent(
        imagePath: "assets/images/Udacity.png",
        offline: false,
        online50: false,
        online100: true,
        flexibleDeadlines: true,
        Textunderimage: "Udacity nanodegree courses and programs in AI, automated systems, robotics, data science, programming and business.",
        translated: false,
        level: false,
        timer: false,
        follow: true,
        figma: false

    );
  }
}

class UI_UX extends StatelessWidget {
  static const String id="UIUX";

  @override
  Widget build(BuildContext context) {
    return CourseContent(
        imagePath: "assets/images/UIUX.png",
        offline: true,
        online50: true,
        online100: false,
        flexibleDeadlines: false,
        Textunderimage: "UI designers work on individual pages, buttons, and interactions and functional. UX designers take a high-level view of a product or service.",
        translated: false,
        level: false,
        timer: false,
        follow: false,
        figma: true


    );
  }
}

class Enactus extends StatelessWidget {
  static const String id="enactus";
  @override
  Widget build(BuildContext context) {
    return CourseContent(
        imagePath: "assets/images/Enactus.png",
        offline: true,
        online50: true,
        online100: false,
        flexibleDeadlines: false,
        Textunderimage: "our workshops and learn new skills with enactus",
        translated: false,
        level: false,
        timer: false,
        follow: true,
        figma: false


    );
  }
}



