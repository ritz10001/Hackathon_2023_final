import 'package:flutter/material.dart';
import 'package:hackathon_project/services/StudentClass.dart';
import 'package:hackathon_project/scripts/StudentInfoWidget.dart';

class StudentListWidget extends StatefulWidget {
  const StudentListWidget({super.key});

  @override
  State<StudentListWidget> createState() => _StudentListWidgetState();
}

class _StudentListWidgetState extends State<StudentListWidget> {
  StudentClass instance =StudentClass(name: 'John Doe', rnumber: '9482u3598', email: '38479x', date: '342', time: '903285915');
  StudentClass instance2 =StudentClass(name: 'William Hobby', rnumber: '3492r3232', email: '38479y', date: '3492', time: '90328591');
  StudentClass instance3 =StudentClass(name: 'Jamaica Williams', rnumber: '3492r3232', email: '38479z', date: '3423', time: '90328592');


  late List<StudentClass> array = [
    instance,
    instance2,
    instance3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //elevation: 300,
        shadowColor: Colors.white,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'STUDENT LIST',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.red,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: array.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.red,
              child: ListTile(
                //leading: const Icon(Icons.abc),
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'scripts/StudentInfoWidget',
                  arguments: {
                      'name': array[index].name,
                      'rnumber': array[index].rnumber,
                      'email' : array[index].email,
                      'date': array[index].date,
                      'time': array[index].time,
                  });
                },
                title: Text(
                  array[index].name,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
