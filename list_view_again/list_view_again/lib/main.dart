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
      theme: ThemeData.dark().copyWith(
        cardColor: Color.lerp(Colors.red, Colors.white, 0.2),
        cardTheme: ThemeData.dark().cardTheme?.copyWith(
              color: Color.lerp(Colors.red, Colors.black, 0.1),
              margin: EdgeInsets.all(20.0),
              elevation: 0.0,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: BorderSide(color: Colors.white24, width: 1)),
            ),
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.ac_unit),
        ),
        appBar: AppBar(
          title: Center(child: Icon(Icons.account_tree_rounded)),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: const [
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
