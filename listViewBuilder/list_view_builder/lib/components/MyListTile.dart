import 'package:flutter/material.dart';

class MyCardTile extends StatelessWidget {
  final String my_title;

  const MyCardTile({Key? key, required String this.my_title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.alarm),
        title: Text(my_title),
        subtitle: Text("This is subtitle"),
      ),
    );
  }
}
