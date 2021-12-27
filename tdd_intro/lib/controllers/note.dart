import 'package:shared_preferences/shared_preferences.dart';

class NoteController {
  Future<bool> setNote(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    return await handle.setString("my_note", note);
  }
}
