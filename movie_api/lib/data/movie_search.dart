import 'dart:convert';

import 'package:http/http.dart' as http;

class MovieSearch {
  Future<List> getMovieList(String q) async {
    var res = await http
        .get(Uri.parse("https://imdb-api.com/API/Search/k_7a5d7x6o/$q"));
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body)['results'];
      return data;
    } else {
      throw Exception("Error!");
    }
  }
}
