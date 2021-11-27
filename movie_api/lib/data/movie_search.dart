import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_api/models/movie.dart';

class MovieSearch {
  // Future<List> getMovieList(String q) async {
  //   var res = await http
  //       .get(Uri.parse("https://imdb-api.com/API/Search/k_7a5d7x6o/$q"));
  //   if (res.statusCode == 200) {
  //     List data = jsonDecode(res.body)['results'];
  //     return data;
  //   } else {
  //     throw Exception("Error!");
  //   }
  // }
  Future<List<Movie>> getMovieList(String q) async {
    List<Movie> movieList = [];
    var res = await http
        .get(Uri.parse("https://imdb-api.com/API/Search/k_to0r3ezu/$q"));
    if (res.statusCode == 200) {
      List data = jsonDecode(res.body)['results'];
      for (var movie in data) {
        Movie movieOb = Movie(
            movie["id"], movie["image"], movie["title"], movie["description"]);
        movieList.add(movieOb);
      }
      print(movieList[0].title);
      return movieList;
    } else {
      throw Exception("Error!");
    }
  }
}
