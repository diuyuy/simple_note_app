import '../entities/note.dart';

abstract interface class WastebasketRepository {
  List<Note> loadAllWastes();
  Future<void> addDeletedNote(Note deletedNote);
  Future<void> restoreNote(String id);
  Future<void> deleteNotePermanently(String id);
}
