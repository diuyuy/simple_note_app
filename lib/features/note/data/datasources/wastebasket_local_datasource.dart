import 'package:hive_ce/hive.dart';

import '../models/note_model.dart';

class WastebasketLocalDatasource {
  WastebasketLocalDatasource(this._wasteBasketBox);

  final Box<NoteModel> _wasteBasketBox;

  List<NoteModel> loadAllWastes() {
    return _wasteBasketBox.values.toList();
  }

  Future<void> addDeletedNote(NoteModel deletedNote) async {
    await _wasteBasketBox.put(deletedNote.id, deletedNote);
  }

  Future<void> restoreNote(String id) async {
    await _wasteBasketBox.delete(id);
  }

  Future<void> deleteNotePermanently(String id) async {
    await _wasteBasketBox.delete(id);
  }
}
