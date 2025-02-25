import '../entities/note.dart';

abstract interface class WastebasketRepository {
  Note getWaste(String id);
  List<Note> loadAllWastes();
  Future<void> addDeletedNote(Note deletedNote);
  Future<void> deleteRestoredNote(String id);
  Future<void> deleteNotePermanently(String id);
}
