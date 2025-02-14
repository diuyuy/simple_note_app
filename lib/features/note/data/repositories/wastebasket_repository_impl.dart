import 'package:simple_note_app/core/utils/note_to_model.dart';

import '../../../../core/utils/note_model_to_entity.dart';
import '../../domain/entities/note.dart';
import '../../domain/repositories/wastebasket_repository.dart';
import '../datasources/wastebasket_local_datasource.dart';

class WastebasketRepositoryImpl implements WastebasketRepository {
  final WastebasketLocalDatasource _localDatasource;

  WastebasketRepositoryImpl(this._localDatasource);

  @override
  List<Note> loadAllWastes() {
    final notes = _localDatasource.loadAllWastes();
    return notes.map((note) => noteModelToEntity(note)).toList();
  }

  @override
  Future<void> addDeletedNote(Note deletedNote) async {
    await _localDatasource.addDeletedNote(noteToModel(deletedNote));
  }

  @override
  Future<void> restoreNote(String id) async {
    await _localDatasource.restoreNote(id);
  }

  @override
  Future<void> deleteNotePermanently(String id) async {
    await _localDatasource.deleteNotePermanently(id);
  }
}
