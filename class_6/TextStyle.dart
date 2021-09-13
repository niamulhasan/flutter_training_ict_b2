import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App Title"),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text(
                  "Demo Text Here",
                  style: TextStyle(fontSize: 50.00),
                ),
                Text("Demo Text Here")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
