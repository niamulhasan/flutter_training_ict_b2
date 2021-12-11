import 'dart:convert';

import 'package:http/http.dart' as http;

class NewsRepository {
  Future<List> getNews() async {
    http.Response response = await http.get(Uri.parse(
        "http://7c8f-103-77-102-115.ngrok.io/api/articles?populate=image"));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)["data"];
      return data;
    } else {
      throw Exception("Error!");
    }
  }
}
