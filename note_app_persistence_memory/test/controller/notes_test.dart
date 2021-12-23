import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';
import 'package:note_app_persistence_memory/contoller/notes.dart';

void main() {
  test(
    "setNotes: Should return true.",
    () async {
      //Arrange
      SharedPreferences.setMockInitialValues({});
      //Act
      bool theNotes = await NotesController().setNotes(["hello", "hi"]);
      //Assert
      expect(theNotes, true);
    },
  );

  test("getNotes: Should return a list of String", () {});
}
