// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyViewProfile extends StatelessWidget {
  final String the_name;
  final Image the_pic;

  const MyViewProfile(
      {Key? key, required String this.the_name, required Image this.the_pic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Profile"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              the_name,
              style: TextStyle(fontSize: 28.0),
            ),
            the_pic,
          ],
        ),
      ),
    );
  }
}
