import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//components
import 'components/MyCard.dart';

void main() {
  runApp(MyListApp());
}

class MyListApp extends StatelessWidget {
  const MyListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Scrolable App"),
          ),
          body: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
              ],
            ),
          )),
    );
  }
}
