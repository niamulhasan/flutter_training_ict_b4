// ignore_for_file: unused_local_variable

import 'package:shared_preferences/shared_preferences.dart';

class NotesController {
  Future<List<String>?> getNotes() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? notes = handle.getStringList("my_notes");
    return notes;
  }

  Future<bool> setNotes(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? currentNotes = handle.getStringList("my_notes");
    if (currentNotes != null) {
      currentNotes.add(note);
      return await handle.setStringList("my_notes", currentNotes);
    } else {
      return await handle.setStringList("my_notes", [note]);
    }
  }
}
