import '../entities/note.dart';

abstract interface class NoteRepository {
  List<Note> loadNoteList();
  Future<void> createNote(Note newNote);
  Future<void> updateNote(Note updatedNote);
  Future<void> deleteNote(String id);
  Future<void> reorderNotes(List<String> newOrder);
  Future<void> restoreNote(Note restoredNote);
}
