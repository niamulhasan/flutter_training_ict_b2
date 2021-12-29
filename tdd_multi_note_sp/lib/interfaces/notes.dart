abstract class AbsNotesController {
  Future<bool> addNote(String note);
  Future<List<String>?> getNotes();
  bool deleteNote(int index);
  bool updateNote(String note, int index);
}
