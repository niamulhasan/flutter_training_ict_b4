import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_note_app_final/config/config.dart';
import 'package:sp_note_app_final/modules/notes/controllers/notes_controller.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({
      Config.notesKey: ["one", "two", "boo"]
    });
  });
  test("addNote: Should return ture", () async {
    //Arrenge

    //Act
    bool isAdded = await NotesController().addNote("New note");

    //Assert
    expect(isAdded, true);
  });

  test("deleteNote: Should return true", () async {
    //Arrange

    //Act
    bool isDeleted = await NotesController().deleteNote(1);

    //Assert
    expect(isDeleted, true);
  });

  test("getNotes: Should Return a list of Stiring", () async {
    //Arrange

    //Act
    List<String>? notes = await NotesController().getNotes();

    //Assert
    expect(notes, isA<List<String>?>());
  });

  test("updateNote: Should return true", () async {
    //Arrange

    //Act
    bool isUpdated = await NotesController().updateNote(1, "Twenty");

    //Assert
    expect(isUpdated, true);
  });
}
