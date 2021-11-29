import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void postBook(String title, String details) async {
    http.Response response =
        await http.post(Uri.parse("http://localhost:1337/books"),
            headers: {
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode({"title": "$title", "details": "$details"}));
    print(response.body);
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
            child: ElevatedButton(
              onPressed: () => postBook("Title by param", "Details by param"),
              child: Text("Create a Book"),
            ),
          ),
        ),
      ),
    );
  }
}
