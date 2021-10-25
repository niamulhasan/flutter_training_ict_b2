import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int green = 30;
  int purple = 30;
  bool isEnd = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: isEnd
            ? FloatingActionButton(
                onPressed: () {},
                child: Text("boo"),
              )
            : Text(""),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: purple,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      purple += 1;
                      green -= 1;
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      purple += 1;
                      green -= 1;
                    });
                  },
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.purpleAccent,
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: green,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      green += 1;
                      purple -= 1;
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      green += 1;
                      purple -= 1;
                    });
                  },
                  child: Container(
                    color: Colors.greenAccent,
                    child: Text(""),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
