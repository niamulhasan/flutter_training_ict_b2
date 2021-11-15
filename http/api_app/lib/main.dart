import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> getBooksData() async {
  var respnse = await http.get(Uri.parse("https://alquranbd.com/api/hadith"));
  if (respnse.statusCode == 200) {
    return respnse.body;
  } else {
    throw Exception("Error");
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<String> booksFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //code
    print("I am in the init state");
    booksFuture = getBooksData();
    print(booksFuture);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: FutureBuilder(
                future: booksFuture,
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.toString());
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
          ),
        ),
      ),
    );
  }
}
