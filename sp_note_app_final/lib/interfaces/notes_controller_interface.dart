abstract class NotesControllerInterface {
  Future<List<String>?> getNotes();
  Future<bool> addNote(String note);
  Future<bool> deleteNote(int index);
  Future<bool> updateNote(int index, String note);
}
