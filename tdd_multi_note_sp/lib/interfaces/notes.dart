abstract class AbsNotesController {
  Future<bool> addNote(String note);
  Future<List<String>?> getNotes();
  Future<bool> deleteNote(int index);
  Future<bool> updateNote(String note, int index);
}
