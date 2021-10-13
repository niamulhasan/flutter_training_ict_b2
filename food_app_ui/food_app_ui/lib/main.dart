import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color(0xffF5F5FA),
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
              actions: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffE9E9ED),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                    children: [
                      Icon(Icons.ac_unit),
                      Divider(),
                      Icon(Icons.access_alarms)
                    ],
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff27272A),
                    ),
                  ),
                  Text(
                    "Sample restaurant",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff27272A),
                    ),
                  )
                ],
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Image(
                  width: 220.0,
                  image: AssetImage("assets/images/plate.png"),
                ),
              ),
              expandedHeight: 200.0,
              flexibleSpace: Container(),
            )
          ],
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Text("Boo"),
            ),
          ),
        ),
      ),
    );
  }
}
