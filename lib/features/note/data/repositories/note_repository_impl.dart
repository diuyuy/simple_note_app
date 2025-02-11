import '../../domain/entities/note.dart';
import '../../domain/repositories/note_repository.dart';
import '../datasources/note_local_datasource.dart';
import '../models/note_model.dart';

class NoteRepositoryImpl implements NoteRepository {
  NoteRepositoryImpl(this._localDatasource);

  final NoteLocalDatasource _localDatasource;

  @override
  List<Note> getNoteList() {
    final noteList = _localDatasource.getNoteList();
    return noteList.map((note) => modelToEntity(note)).toList();
  }

  @override
  Future<void> addNote(Note newNote) async {
    await _localDatasource.addNote(entityToModel(newNote));
  }

  @override
  Future<void> updateNote(Note updatedNote) async {
    await _localDatasource.updateNote(entityToModel(updatedNote));
  }

  @override
  Future<void> deleteNote(String id) async {
    await _localDatasource.deleteNote(id);
  }

  @override
  Future<void> reorderNotes(int oldIndex, int newIndex) async {
    await _localDatasource.reorderNotes(oldIndex, newIndex);
  }

  Note modelToEntity(NoteModel note) {
    return Note(
      id: note.id,
      title: note.title,
      content: note.content,
      createDate: note.createDate,
      updateDate: note.updateDate,
      isPinned: note.isPinned,
      category: note.category,
    );
  }

  NoteModel entityToModel(Note note) {
    return NoteModel(
      id: note.id,
      title: note.title,
      content: note.content,
      createDate: note.createDate,
      updateDate: note.updateDate,
      isPinned: note.isPinned,
      category: note.category,
    );
  }
}
