import 'package:flutter/material.dart';

import 'components/MyProfileCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Color(0xffEFF0F3),
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                MyProfileCard(),
                MyProfileCard(),
                MyProfileCard(),
                MyProfileCard(),
                MyProfileCard(),
                MyProfileCard(),
                MyProfileCard(),
                MyProfileCard(),
                MyProfileCard(),
                MyProfileCard(),
              ],
            ),
          )),
    );
  }
}
