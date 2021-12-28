import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_single_note/note_controller.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({"my_note": "Test note"});
  });

  test("setNote: Should return true", () async {
    //Arrange

    //Act
    bool isSetNote = await NoteController().setNote("boo");

    //Assert
    expect(isSetNote, true);
  });

  test("getNotes: Should reuturn a String? : Test Note", () async {
    //Arrange

    //Act
    String? note = await NoteController().getNote();

    //Assert
    expect(note, "Test note");
  });
}
