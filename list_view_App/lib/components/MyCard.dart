import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        child: ListTile(
          title: Text("Hi I am the title"),
          leading: Icon(Icons.access_alarm_sharp),
          subtitle: Text("I am the subtitle"),
          trailing: Icon(Icons.add),
        ),
      ),
    );
  }
}
