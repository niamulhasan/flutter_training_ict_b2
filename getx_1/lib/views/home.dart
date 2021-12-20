import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/controllers/counter.dart';

class HomeView extends StatelessWidget {
  var counterC = CounterController();

  HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterC.increase,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This many number you have pressed the button"),
            Obx(
              () => Text(
                "${counterC.count}",
                style: TextStyle(
                  fontSize: 34.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
