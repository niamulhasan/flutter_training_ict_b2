import 'package:flutter/material.dart';
import 'package:our_news_app/components/news_tile.dart';
import 'package:our_news_app/pages/post_news.dart';
import 'package:our_news_app/repo/news.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => PostNewsPage(),
          ));
        },
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
    );
  }
}
