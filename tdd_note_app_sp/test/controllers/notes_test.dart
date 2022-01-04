import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_note_app_sp/controllers/notes.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({
      "my_notes": ["note 1", "note 2", "anoter note"]
    });
  });
  test("setNotes: Should return true", () async {
    //Arrange

    //Act
    bool isSucceed = await NotesController().setNotes("a note");

    //Assert
    expect(isSucceed, true);
  });

  test("getNotes: should return a list of String", () async {
    //Arrange

    //Act
    List<String>? listOfNotes = await NotesController().getNotes();

    //Assert
    expect(listOfNotes, ["note 1", "note 2", "anoter note"]);
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
    bool isUpdated = await NotesController().updateNote(1, "Note 20");

    //Assert
    expect(isUpdated, true);
  });
}
