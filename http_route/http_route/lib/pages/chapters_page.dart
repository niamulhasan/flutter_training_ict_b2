import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChaptersList extends StatefulWidget {
  final String? bookName;
  final String? bookKey;

  const ChaptersList({
    Key? key,
    required String this.bookName,
    required this.bookKey,
  }) : super(key: key);

  @override
  _ChaptersListState createState() => _ChaptersListState();
}

class _ChaptersListState extends State<ChaptersList> {
  late Future<List> chaptersListFuture;

  Future<List> getChaptersList() async {
    var response = await http
        .get(Uri.parse("http://alquranbd.com/api/hadith/${widget.bookKey}"));
    if (response.statusCode == 200) {
      print(response.body);
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
    chaptersListFuture = getChaptersList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bookName!),
      ),
      body: Container(
        child: FutureBuilder(
          future: chaptersListFuture,
          builder: (BuildContext context, AsyncSnapshot<List> sn) {
            if (sn.hasData) {
              return ListView.builder(
                itemCount: sn.data!.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(sn.data![index]["chSerial"]),
                    ),
                    title: Text(sn.data![index]["nameBengali"]),
                    subtitle: Text(sn.data![index]["hadith_number"]),
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
    );
  }
}
