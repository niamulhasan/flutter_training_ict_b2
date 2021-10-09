import 'package:flutter/material.dart';

import 'components/MyListTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: 1000,
            itemBuilder: (context, i) => MyCardTile(my_title: "Say Boo $i"),
          ),
        ),
      ),
    );
  }
}
