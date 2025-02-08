import '../entities/note.dart';

abstract interface class NoteRepository {
  List<Note> getNoteList();
  Future<void> addNote(Note newNote);
  Future<void> updateNote(Note updatedNote);
  Future<void> deleteNote(String id);
}
