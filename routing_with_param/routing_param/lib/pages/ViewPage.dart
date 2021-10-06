import 'package:flutter/material.dart';
import 'package:routing_param/pages/HomePage.dart';

class ViewPage extends StatelessWidget {
  final String text;

  const ViewPage({Key? key, required String this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 30.0),
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
      ),
    );
  }
}
