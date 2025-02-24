import '../../../../core/utils/note_model_to_entity.dart';
import '../../../../core/utils/note_to_model.dart';
import '../../domain/entities/note.dart';
import '../../domain/repositories/note_repository.dart';
import '../datasources/note_local_datasource.dart';

class NoteRepositoryImpl implements NoteRepository {
  NoteRepositoryImpl(this._localDatasource);

  final NoteLocalDatasource _localDatasource;

  @override
  Note getNote(String id) {
    final noteModel = _localDatasource.getNote(id);

    return noteModelToEntity(noteModel);
  }

  @override
  List<Note> loadNoteList() {
    final noteList = _localDatasource.getNoteList();
    return noteList.map((note) => noteModelToEntity(note)).toList();
  }

  @override
  Future<void> createNote(Note newNote) async {
    await _localDatasource.addNote(noteToModel(newNote));
  }

  @override
  Future<void> updateNote(Note updatedNote) async {
    await _localDatasource.updateNote(noteToModel(updatedNote));
  }

  @override
  Future<void> deleteNote(String id) async {
    await _localDatasource.deleteNote(id);
  }

  @override
  Future<void> reorderNotes(List<String> newOrder) async {
    await _localDatasource.reorderNotes(newOrder);
  }

  @override
  Future<void> restoreNote(Note restoredNote) async {
    await _localDatasource.restoreNote(noteToModel(restoredNote));
  }
}
