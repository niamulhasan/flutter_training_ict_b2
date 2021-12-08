import 'dart:convert';

import 'package:http/http.dart' as http;

class NewsRepository {
  Future<List> getNews() async {
    http.Response response = await http
        .get(Uri.parse("http://26b9-103-77-102-115.ngrok.io/api/articles"));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)["data"];
      return data;
    } else {
      throw Exception("Error!");
    }
  }
}
