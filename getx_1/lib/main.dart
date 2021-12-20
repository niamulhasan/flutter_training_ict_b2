import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/home.dart';

void main() => runApp(GetMaterialApp(home: MyFirstGetxApp()));

class MyFirstGetxApp extends StatelessWidget {
  MyFirstGetxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
