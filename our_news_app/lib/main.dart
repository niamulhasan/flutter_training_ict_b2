import 'package:flutter/material.dart';

import 'components/news_tile.dart';
import 'pages/home.dart';
import 'repo/news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
