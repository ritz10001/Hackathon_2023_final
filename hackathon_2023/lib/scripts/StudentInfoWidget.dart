import 'package:flutter/material.dart';
import 'package:hackathon_project/services/StudentClass.dart';
import 'package:hackathon_project/scripts/CourseSelect.dart';
import 'package:hackathon_project/scripts/StudentListWidget.dart';

class StudentInfoWidget extends StatefulWidget {
  const StudentInfoWidget({super.key});

  @override
  State<StudentInfoWidget> createState() => _StudentInfoWidgetState();
}

class _StudentInfoWidgetState extends State<StudentInfoWidget> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    print("THIS IS NAME");
    print(data['name']);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
        title: Text(
          '${data['name']} Details',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.red,
          )
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height:100),
          const SizedBox(width:500),

          Container(
            child: Row(
              children: [
                SizedBox(width:20),
                const Text(
                  'Name :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color:Colors.red,
                  )
                ),
                SizedBox(width:30),
                Text(
                  data['name'],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),
          Container(
            child: Row(
              children: [
                SizedBox(width: 20),
                const Text(
                  'R Number :',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 30),
                Text(
                  data['rnumber'],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            child: Row(
              children: [
                SizedBox(width: 20),
                const Text(
                  'Email :',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  data['email'],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            child: Row(
              children: [
                SizedBox(width: 20),
                const Text(
                  'Time :',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  data['time'],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            child: Row(
              children: [
                const SizedBox(width: 20),
                const Text(
                  'Date :',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  data['date'],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
