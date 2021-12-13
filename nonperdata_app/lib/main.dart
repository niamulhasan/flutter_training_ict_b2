import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? theNumber = null;

  Future<int> getStartupNumber() async {
    SharedPreferences handel = await SharedPreferences.getInstance();
    int? our_number = handel.getInt('startup_num');
    // if (our_number == null) {
    //   return 0;
    // } else {
    //   return our_number;
    // }
    return our_number == null ? 0 : our_number;
  }

  void setStartupNumber() async {
    SharedPreferences handel = await SharedPreferences.getInstance();
    int our_number = await getStartupNumber();
    setState(() {
      this.theNumber = our_number;
    });
    handel.setInt('startup_num', our_number + 1);
  }

  @override
  void initState() {
    super.initState();
    setStartupNumber();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text(
              '$theNumber',
              style: TextStyle(fontSize: 44.0),
            ),
          ),
        ),
      ),
    );
  }
}
