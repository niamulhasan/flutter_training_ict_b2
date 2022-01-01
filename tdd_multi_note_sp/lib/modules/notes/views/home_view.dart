import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      appBar: AppBar(
        title: Text("My Awsome Note App"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 20,
          itemBuilder: (BuildContext context, int i) => Card(
            child: Center(child: Text("Card Number $i")),
          ),
        ),
      ),
    );
  }
}
