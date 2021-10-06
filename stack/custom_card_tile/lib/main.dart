import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color(0xff202020),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(children: const [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.elliptical(10.0, 10.0),
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0))),
              color: Color(0xffe8ed9b),
              child: ListTile(
                title: Text("Hi"),
                subtitle: Text("This is my second note"),
                trailing: Icon(LineIcons.alternateTrashAlt),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
