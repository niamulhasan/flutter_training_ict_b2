import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/HomePage.dart';
import 'pages/SecondPage.dart';

void main() => runApp(MyRoutingApp());

class MyRoutingApp extends StatelessWidget {
  const MyRoutingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
