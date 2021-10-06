import 'package:flutter/material.dart';

import 'pages/HomePage.dart';
import 'pages/ViewPage.dart';

void main() => runApp(MyRoutingApp());

class MyRoutingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
