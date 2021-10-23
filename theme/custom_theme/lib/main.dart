import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

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
        body: Center(
          child: Container(
            child: Column(
              children: const [
                MyTextCard(),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hello World by param',
                      style: TextStyle(
                        fontSize: 48.0,
                        fontFamily: "Balooda",
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Icon(
                    LineAwesomeIcons.accessible_icon,
                    size: 50.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextCard extends StatelessWidget {
  final String? text;

  const MyTextCard({
    Key? key,
    String? this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text ?? "Hello",
          style: TextStyle(
            fontSize: 48.0,
            fontFamily: "Balooda",
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
