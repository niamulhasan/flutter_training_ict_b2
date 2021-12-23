import 'package:flutter/material.dart';
import 'package:note_app_persistence_memory/contoller/notes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => NotesController()
                      .setNotes(["note222", "note111", "notedsaff 3"]),
                  child: Text("Set Dummy Notes"),
                ),
                ElevatedButton(
                  onPressed: NotesController().getNotes,
                  child: Text("Get Notes"),
                ),
                ElevatedButton(
                  onPressed: () =>
                      NotesController().appendNote("I am the new note"),
                  child: Text("Append Note"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
