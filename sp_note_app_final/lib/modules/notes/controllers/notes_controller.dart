import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_note_app_final/config/config.dart';
import 'package:sp_note_app_final/interfaces/notes_controller_interface.dart';

class NotesController implements NotesControllerInterface {
  @override
  Future<bool> addNote(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? notes = handle.getStringList("my_notes");
    if (notes != null) {
      notes.add(note);
      return await handle.setStringList(Config.notesKey, notes);
    }
    return false;
  }

  @override
  Future<bool> deleteNote(int index) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<List<String>?> getNotes() {
    // TODO: implement getNotes
    throw UnimplementedError();
  }

  @override
  Future<bool> updateNote(int index, String note) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
