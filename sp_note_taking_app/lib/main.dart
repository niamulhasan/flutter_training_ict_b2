import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void setDummyNotes() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    handle.setStringList("notes", ["note one", "note two", "note three"]);
    print("Dummy notes has been set.");
  }

  Future<List<String>?> getNotes() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    var data = handle.getStringList("notes");
    print("$data");
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: FutureBuilder(
            future: getNotes(),
            builder: (BuildContext context, AsyncSnapshot<List<String>?> sn) {
              if (sn.hasData) {
                List<String>? notes = sn.data;
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200),
                  itemCount: notes!.length,
                  itemBuilder: (BuildContext context, int i) => Card(
                    color: Colors.amber.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "${notes[i]}",
                      ),
                    ),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
