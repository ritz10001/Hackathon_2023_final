import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  TextEditingController _textEditingController = TextEditingController();

  // Variable to store the entered text
  String _inputText = '';

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          centerTitle: true,
          title: Text('Student R ID Entry',
          style:TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(0,20,0,0),
            child: Column(
              children: <Widget>[
                TextField(
                  style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,),
                  controller: _textEditingController,
                  onChanged: (value) {
                    // Update the _inputText variable when text changes
                    setState(() {
                      _inputText = value;
                    });
                  },
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    //labelText: 'Enter Text',
                    labelStyle:TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Enter R ID: $_inputText',
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                      onPressed:(){},
                      child: const Text(
                        'SUBMIT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,

                        ),
                      ),

                  ),
                ),
                const SizedBox(height: 22),
                BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: _inputText,
                  width: 150,
                  height: 70,
                ),
              ],
            ),
            ),
        );
    }

}
