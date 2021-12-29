import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_multi_note_sp/interfaces/notes.dart';

class NotesController implements AbsNotesController {
  @override
  Future<bool> addNote(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? currentNotes = handle.getStringList("my_notes");
    currentNotes!.add(note);
    return await handle.setStringList("my_notes", currentNotes);
  }

  @override
  Future<List<String>?> getNotes() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    return handle.getStringList("my_notes");
  }

  //TODO: Need to be implemented
  bool deleteNote(int index) {
    return false;
  }

  //TODO: Need to be implemented
  bool updateNote(String note, int index) {
    return false;
  }
}
