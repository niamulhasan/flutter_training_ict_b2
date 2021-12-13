import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var titleTextController = TextEditingController();

  void postNews(String title) async {
    var response = await http.post(
      Uri.parse('http://localhost:1337/api/articles'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'data': {'title': "$title"},
      }),
    );
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
        body: Column(
          children: [
            TextField(
              controller: titleTextController,
            ),
            ElevatedButton(
              onPressed: () => postNews(titleTextController.text),
              child: Text("Post"),
            ),
          ],
        ),
      ),
    );
  }
}
