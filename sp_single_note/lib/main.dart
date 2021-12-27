import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? theNote = "Note is Empty";

  TextEditingController noteTextController = TextEditingController();

  void setNote(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    handle.setString("my_note", note);
    print("Note has been set");
  }

  void getNote() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    setState(() {
      theNote = handle.getString("my_note");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getNote();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Text(
                    "Note Taking App",
                    style: TextStyle(fontSize: 44.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    controller: noteTextController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: () => setNote(noteTextController.text),
                    child: Text("Update"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: getNote,
                    child: Text("Refresh"),
                  ),
                ),
                Text(
                  theNote == null ? "No notes" : theNote!,
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
