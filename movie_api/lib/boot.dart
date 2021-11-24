import 'package:flutter/material.dart';

import 'pages/home/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find a Movie',
      home: HomePage(),
    );
  }
}
