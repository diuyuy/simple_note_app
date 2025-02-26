import '../../../../core/utils/note_model_to_entity.dart';
import '../../../../core/utils/note_to_model.dart';
import '../../domain/entities/note.dart';
import '../../domain/repositories/wastebasket_repository.dart';
import '../datasources/wastebasket_local_datasource.dart';

class WastebasketRepositoryImpl implements WastebasketRepository {
  final WastebasketLocalDatasource _localDatasource;

  WastebasketRepositoryImpl(this._localDatasource);

  @override
  Future<void> addDeletedNote(Note deletedNote) async {
    await _localDatasource.addDeletedNote(noteToModel(deletedNote));
  }

  @override
  Note getWaste(String id) {
    final waste = _localDatasource.getWaste(id);

    return noteModelToEntity(waste);
  }

  @override
  List<Note> loadAllWastes() {
    final notes = _localDatasource.loadAllWastes();
    return notes.map((note) => noteModelToEntity(note)).toList();
  }

  @override
  Future<void> deleteRestoredNote(String id) async {
    await _localDatasource.deleteRestoredNote(id);
  }

  @override
  Future<void> deleteNotePermanently(String id) async {
    await _localDatasource.deleteNotePermanently(id);
  }

  @override
  Future<void> updateWaste(Note updatedWaste) async {
    await _localDatasource.updateWaste(noteToModel(updatedWaste));
  }
}
