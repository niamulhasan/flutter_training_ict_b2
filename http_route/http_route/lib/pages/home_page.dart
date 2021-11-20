import 'dart:convert';

import 'package:flutter/material.dart';

import 'chapters_page.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List> booksListFuture;
  Future<List> getBooksList() async {
    var response = await http.get(Uri.parse("http://alquranbd.com/api/hadith"));
    if (response.statusCode == 200) {
      List resData = jsonDecode(response.body);
      return resData;
    } else {
      throw Exception("Error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    booksListFuture = getBooksList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: booksListFuture,
            builder: (BuildContext context, AsyncSnapshot<List> sn) {
              if (sn.hasData) {
                return ListView.builder(
                  itemCount: sn.data!.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChaptersList(
                            bookName: sn.data![index]["nameBengali"],
                            bookKey: sn.data![index]["book_key"]),
                      ));
                    },
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(sn.data![index]["id"]),
                        ),
                        title: Text(sn.data![index]["nameBengali"]),
                        subtitle: Text(sn.data![index]["book_key"]),
                      ),
                    ),
                  ),
                );
              } else if (sn.hasError) {
                return Text("Problem Loading Data");
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
