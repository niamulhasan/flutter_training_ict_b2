import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostNewsPage extends StatefulWidget {
  const PostNewsPage({Key? key}) : super(key: key);

  @override
  State<PostNewsPage> createState() => _PostNewsPageState();
}

class _PostNewsPageState extends State<PostNewsPage> {
  void postNews() async {
    try {
      http.Response response = await http.post(
        Uri.parse(
          "http://9822-103-217-108-77.ngrok.io/api/articles/",
          // "https://jsonplaceholder.typicode.com/posts",
        ),
        headers: {
          "Context-Type": "application/json; charset=UTF-8",
          // "Access-Control-Allow-Origin": "*"
        },
        body: jsonEncode({
          "data": {
            "attributes": {"title": "boo"}
          }
        }),
      );

      print(response.body);
    } catch (e) {
      print("error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post a Fake News"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: "Fake News Title",
                  border: OutlineInputBorder(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 14.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Fake News Details",
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 14.0,
                ),
                child: ElevatedButton(
                  onPressed: postNews,
                  child: Text("Post Fake News"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
