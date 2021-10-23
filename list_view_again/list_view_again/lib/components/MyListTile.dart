// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String? name;
  final String text_under_title;
  final Color background_color;
  const MyListTile(
      {Key? key,
      String? this.name,
      required String this.text_under_title,
      required Color this.background_color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network("https://picsum.photos/200"),
            ),
            title: Text(name!),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(text_under_title),
            ),
          ),
        ),
      ],
    );
  }
}
