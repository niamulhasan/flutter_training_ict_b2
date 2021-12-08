import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController titleTextController = TextEditingController();
  TextEditingController detailsTextController = TextEditingController();

  void postBook(String title, String details) async {
    http.Response res = await http.post(
      Uri.parse("http://1c5f-103-77-102-115.ngrok.io/api/books"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        {
          "data": {"title": "$title", "details": "$details"}
        },
      ),
    );

    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: titleTextController,
              ),
              TextField(
                controller: detailsTextController,
                maxLines: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {
                    print(titleTextController.text);
                    print(detailsTextController.text);
                    print("boo");
                    postBook(
                        titleTextController.text, detailsTextController.text);
                  },
                  child: Text("Add Book"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
