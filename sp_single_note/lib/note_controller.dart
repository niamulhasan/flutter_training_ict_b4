import 'package:shared_preferences/shared_preferences.dart';

class NoteController {
  Future<bool> setNote(String note) async {
    bool isSet = false;
    SharedPreferences sp_handle = await SharedPreferences.getInstance();
    return await sp_handle.setString("my_note", note);
  }

  Future<String?> getNote() async {
    SharedPreferences sp_handle = await SharedPreferences.getInstance();
    return sp_handle.getString("my_note");
  }
}
