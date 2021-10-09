import 'package:flutter/material.dart';

import 'components/MyListTile.dart';

void main() {
  runApp(MyScrollViewAgainApp());
}

class MyScrollViewAgainApp extends StatelessWidget {
  const MyScrollViewAgainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Icon(Icons.account_tree_rounded)),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              MyListTile(
                  name: "Rahim",
                  text_under_title: "Last seen yesterday",
                  background_color: Colors.redAccent),
              MyListTile(
                  name: "Karim",
                  text_under_title: "Last seen last monday",
                  background_color: Colors.greenAccent),
              MyListTile(
                name: "Jasim",
                text_under_title: "Last seen last month",
                background_color: Colors.blueAccent,
              ),
              MyListTile(
                  name: "Niamul",
                  text_under_title: "Last seen last year",
                  background_color: Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
