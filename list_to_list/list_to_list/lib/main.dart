import 'package:flutter/material.dart';

import 'data/Data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final data = Data().data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List to List'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) => ListTile(
              title: Text("$i - ${data[i]['name']}"),
            ),
          ),
        ),
      ),
    );
  }
}
