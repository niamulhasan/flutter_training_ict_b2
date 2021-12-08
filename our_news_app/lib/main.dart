import 'package:flutter/material.dart';

import 'components/news_tile.dart';
import 'repo/news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: FutureBuilder(
              future: NewsRepository().getNews(),
              builder: (BuildContext context, AsyncSnapshot<List> sn) {
                if (sn.hasData) {
                  List? data = sn.data;
                  return ListView.builder(
                    itemCount: data!.length,
                    itemBuilder: (BuildContext context, int i) => Card(
                      child: NewsTile(data: data, index: i),
                    ),
                  );
                } else if (sn.hasError) {
                  return const Center(
                    child: Text("Error Loading Data!"),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
        ),
      ),
    );
  }
}
