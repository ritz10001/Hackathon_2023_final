import 'package:flutter/material.dart';
import 'package:hackathon_project/services/StudentClass.dart';
import 'package:hackathon_project/scripts/CourseSelect.dart';

class CourseSelectWidget extends StatefulWidget {
  const CourseSelectWidget({super.key});

  @override
  State<CourseSelectWidget> createState() => _CourseSelectWidgetState();
}

class _CourseSelectWidgetState extends State<CourseSelectWidget> {

  List<CourseSelect> courses = [
    CourseSelect(coursenum: 'CHEM 1307', batchnum: '1'),
    CourseSelect(coursenum: 'CHEM 1308', batchnum: '2'),
    CourseSelect(coursenum: 'PHYS 1408', batchnum: '1'),
    CourseSelect(coursenum: 'MATH 1450', batchnum: '1'),
    CourseSelect(coursenum: 'MATH 1450', batchnum: '2'),
    CourseSelect(coursenum: 'MATH 1450', batchnum: '3'),
    CourseSelect(coursenum: 'MATH 2450', batchnum: '1'),
    CourseSelect(coursenum: 'MATH 2450', batchnum: '1'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //elevation: 300,
        shadowColor: Colors.white,
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
        title: const Text(
          'SELECT COURSE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.red,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,20,0,0),
        child: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.red,
                child: ListTile(
                  //leading: const Icon(Icons.abc),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'scripts/StudentListWidget');
                  },
                  title: Text(
                    '${courses[index].coursenum}    SECTION ${courses[index].batchnum}',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
