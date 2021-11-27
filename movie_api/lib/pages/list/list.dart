import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_api/data/movie_search.dart';
import 'package:movie_api/models/movie.dart';

class ListPage extends StatefulWidget {
  final String query;

  const ListPage({
    Key? key,
    required this.query,
  }) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  late Future<List<Movie>> movieListFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // movieListFuture = MovieSearch().getMovieList(widget.query);
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
            builder: (BuildContext context, AsyncSnapshot<List<Movie>> sn) {
              if (sn.hasData) {
                List<Movie>? movieList = sn.data;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (2 / 3),
                  ),
                  itemCount: movieList!.length,
                  itemBuilder: (BuildContext context, int i) => Card(
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(movieList[i].thumb!),
                            ),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xff000000).withOpacity(1),
                                Color(0xff000000).withOpacity(0.7),
                                Color(0xffffffff).withOpacity(0),
                                Color(0xffffffff).withOpacity(0),
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                movieList[i].title!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(movieList[i].details!,
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              } else if (sn.hasError) {
                return Center(
                  child: Text("Error Loading Data"),
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
