import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//components imports
import 'components/MySearchBar.dart';
import 'components/MySearchButton.dart';
import 'components/MyContactItem.dart';
import 'components/partials/MyDevider.dart';

void main() {
  runApp(MyContactApp());
}

class MyContactApp extends StatelessWidget {
  const MyContactApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff22343C),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Flexible(
                  flex: 5,
                  child: MySearchBar(),
                ),
                Flexible(
                  flex: 1,
                  child: Center(
                    child: MySearchButton(),
                  ),
                )
              ],
            ),
          ),
        ),
        body: ListView(
          children: const <Widget>[
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
            MyContactItem(),
            MyDevider(),
          ],
        ),
      ),
    );
  }
}
