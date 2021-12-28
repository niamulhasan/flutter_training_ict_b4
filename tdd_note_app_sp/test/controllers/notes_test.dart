import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_note_app_sp/controllers/notes.dart';
import 'package:test/test.dart';

void main() {
  test("setNotes: Should return true", () async {
    //Arrange
    SharedPreferences.setMockInitialValues({
      "my_notes": ["note 1", "note 2", "anoter note"]
    });

    //Act
    bool isSucceed = await NotesController().setNotes("a note");

    //Assert
    expect(isSucceed, true);
  });

  test("getNotes: should return a list of String", () async {
    //Arrange
    SharedPreferences.setMockInitialValues({
      "my_notes": ["note 1", "note 2", "anoter note"]
    });

    //Act
    List<String>? listOfNotes = await NotesController().getNotes();

    //Assert
    expect(listOfNotes, ["note 1", "note 2", "anoter note"]);
  });
}
