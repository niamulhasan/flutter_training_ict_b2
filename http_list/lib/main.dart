import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List> fetchBooks() async {
  var response = await http.get(Uri.parse("http://alquranbd.com/api/hadith"));
  if (response.statusCode == 200) {
    List bookList = jsonDecode(response.body);
    return bookList;
  } else {
    throw Exception('Error!');
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List> bookList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bookList = fetchBooks();
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
          child: FutureBuilder<List>(
              future: bookList,
              builder: (context, sn) {
                if (sn.hasData) {
                  List? theBooksData = sn.data;
                  return ListView.builder(
                    itemCount: theBooksData!.length,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        title: Text(theBooksData[index]['nameEnglish']),
                        subtitle: Text(theBooksData[index]['nameBengali']),
                        leading: CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Text(theBooksData[index]['id']),
                        ),
                      ),
                    ),
                  );
                } else if (sn.hasError) {
                  return Text("Error");
                }
                return SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                );
              }),
        ),
      ),
    );
  }
}
