import 'package:flutter/material.dart';
import 'package:hackathon_project/scripts/CourseSelectWidget.dart';
import 'package:hackathon_project/scripts/MainMenu.dart';
import 'package:hackathon_project/scripts/StudentListWidget.dart';
import 'package:hackathon_project/services/StudentClass.dart';
import 'package:hackathon_project/scripts/StudentInfoWidget.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainMenuWidget(), //initial widget
        'scripts/StudentListWidget': (context) => const StudentListWidget(),
        'scripts/CourseSelectWidget': (context) => const CourseSelectWidget(),
        'scripts/StudentInfoWidget' : (context) => const StudentInfoWidget(),
      }
  ));
}



