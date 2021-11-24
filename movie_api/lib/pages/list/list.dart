import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_api/data/movie_search.dart';

class ListPage extends StatefulWidget {
  final String query;

  const ListPage({
    Key? key,
    required String this.query,
  }) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  late Future<List> movieListFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movieListFuture = MovieSearch().getMovieList(widget.query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(this.widget.query),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FutureBuilder(
            future: movieListFuture,
            builder: (BuildContext context, AsyncSnapshot<List?> sn) {
              if (sn.hasData) {
                List? data = sn.data;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: data!.length,
                  itemBuilder: (context, i) => Card(
                    child: GridTile(
                      header: Text(data[i]["title"]),
                      footer: Text(data[i]["description"]),
                      child: Stack(
                        children: [
                          Center(
                            child: CircularProgressIndicator(),
                          ),
                          Center(
                            child: Image.network(
                              data[i]["image"],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else if (sn.hasError) {
                return Center(
                  child: Text("Data loading failed!"),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
