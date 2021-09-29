import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//components imports
import 'components/MySearchBar.dart';
import 'components/MySearchButton.dart';

void main() {
  runApp(MyContactApp());
}

class MyContactApp extends StatelessWidget {
  const MyContactApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff22343C),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(5.5, 10.0, 5.0, 0.0),
            child: Row(
              children: <Widget>[
                const Flexible(
                  fit: FlexFit.loose,
                  flex: 4,
                  child: MySearchBar(),
                ),
                Flexible(flex: 1, fit: FlexFit.loose, child: MySearchButton())
              ],
            ),
          ),
        ),
        body: Text("Foo"),
      ),
    );
  }
}
