import 'package:shared_preferences/shared_preferences.dart';

class NotesController {
  Future<bool> setNotes(List<String> notes) async {
    bool isSucceed = false;
    try {
      SharedPreferences handle = await SharedPreferences.getInstance();
      isSucceed = await handle.setStringList("my_notes", notes);
    } catch (e) {
      print("My Error: $e");
    }
    print("notes are saved/created!");
    print("Returns: $isSucceed");
    return isSucceed;
  }

  Future<List<String>?> getNotes() async {
    List<String>? notes = [];
    try {
      SharedPreferences handle = await SharedPreferences.getInstance();
      notes = handle.getStringList("my_notes");
    } catch (boo) {
      print("My error: $boo");
    }
    print("$notes");
    return notes;
  }

  void appendNote(String note) async {
    List<String>? notes = await getNotes();
    notes!.add(note);
    print("$notes");
  }
}
