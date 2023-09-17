import 'package:flutter/material.dart';
import 'package:hackathon_project/services/StudentClass.dart';

class MainMenuWidget extends StatefulWidget {
  const MainMenuWidget({super.key});

  @override
  State<MainMenuWidget> createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.white,
          backgroundColor: Colors.blueGrey[800],
          centerTitle: true,
          title: const Text(
            'STUDENT ATTENDANCE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.red,
            ),
          ),
        ),
        body: Center(
            child: Column(
              children: <Widget> [
                const SizedBox(height:100),
                SizedBox(
                  height: 150,
                  width: 350,
                  child: ElevatedButton.icon(
                      icon: const Icon(Icons.check,
                          size: 50,
                          color: Colors.green),
                      onPressed:() {
                        Navigator.pushReplacementNamed(context, 'scripts/CourseSelectWidget');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)
                        ),// Background color
                      ),
                      label: const Text(
                        'CHECK ATTENDANCE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black

                        ),
                      )
                  ),
                ),
                const SizedBox(height:100),
                SizedBox(
                  height: 150,
                  width: 350,
                  child: ElevatedButton.icon(
                      icon: const Icon(Icons.settings,
                          size: 50,
                          color: Colors.orange), //Image.asset('images/optionsicon.png'),

                      onPressed:() {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)
                        ),// Background color
                      ),
                      label: const Text(
                        'OPTIONS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black
                        ),
                      )
                  ),
                )

              ],
            )
        )
    );
  }
}
