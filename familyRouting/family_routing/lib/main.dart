import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/MyProfileCard.dart';
import 'pages/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}
