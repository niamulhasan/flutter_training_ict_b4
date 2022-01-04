import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_note_app_final/config/config.dart';
import 'package:sp_note_app_final/modules/notes/controllers/notes_controller.dart';
import 'package:test/test.dart';

void main() {
  test("addNote: Should return ture", () async {
    //Arrenge
    SharedPreferences.setMockInitialValues({
      Config.notesKey: ["one", "two", "three"]
    });

    //Act
    bool isAdded = await NotesController().addNote("New note");

    //Assert
    expect(isAdded, true);
  });
}
