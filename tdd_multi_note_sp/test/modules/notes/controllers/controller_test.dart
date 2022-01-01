import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_multi_note_sp/core/config.dart';
import 'package:tdd_multi_note_sp/modules/notes/controllers/controller.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({
      Config.notes_key: ["note one", "demo note"]
    });
  });
  test("addNote: Should return true", () async {
    //Arrange

    //Act
    bool isAdded = await NotesController().addNote("new note");

    //Assert
    expect(isAdded, true);
  });

  test("getNotes: Should return a List<String>?", () async {
    //Arrange

    //Act
    List<String>? notes = await NotesController().getNotes();

    //Assert
    expect(notes, isA<List<String>?>());
  });

  test("deleteNote: Should return true", () async {
    //Arrange

    //Act
    bool isDeleted = await NotesController().deleteNote(0);

    //Assert
    expect(isDeleted, true);
  });

  test("updateNote: Should return true", () async {
    //Arrange

    //Act
    bool isUpdated = await NotesController().updateNote("Note one", 0);

    //Assert
    expect(isUpdated, true);
  });
}
