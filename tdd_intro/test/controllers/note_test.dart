import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_intro/controllers/note.dart';
import 'package:test/test.dart';

void main() {
  test("setNote: Should set a note", () async {
    //Arrange
    SharedPreferences.setMockInitialValues({"my_note": "Demo note text"});

    //Act
    bool isSucceed = await NoteController().setNote("Boo foo boo boo");

    //Assert
    expect(isSucceed, true);
  });
}
