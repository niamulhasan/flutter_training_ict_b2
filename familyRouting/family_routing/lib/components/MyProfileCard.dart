// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../pages/MyViewProfile.dart';

class MyProfileCard extends StatelessWidget {
  final String naaam;
  final Image chobi;

  const MyProfileCard({
    Key? key,
    required String this.naaam,
    required Image this.chobi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MyViewProfile(
              the_name: naaam,
              the_pic: chobi,
            ),
          ),
        );
      },
      child: Card(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: chobi,
          ),
          Text(
            naaam,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
