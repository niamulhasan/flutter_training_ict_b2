import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Three"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is Page Three",
              style: TextStyle(fontSize: 44.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
