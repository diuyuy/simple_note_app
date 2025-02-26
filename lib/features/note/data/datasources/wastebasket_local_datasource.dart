import 'package:hive_ce/hive.dart';

import '../models/note_model.dart';

class WastebasketLocalDatasource {
  WastebasketLocalDatasource(this._wasteBasketBox);

  final Box<NoteModel> _wasteBasketBox;

  NoteModel getWaste(String id) {
    final waste = _wasteBasketBox.get(id);
    if (waste == null) throw Exception('Invalid waste Id');

    return waste;
  }

  List<NoteModel> loadAllWastes() {
    return _wasteBasketBox.values.toList().reversed.toList();
  }

  Future<void> addDeletedNote(NoteModel deletedNote) async {
    await _wasteBasketBox.put(deletedNote.id, deletedNote);
  }

  Future<void> deleteRestoredNote(String id) async {
    await _wasteBasketBox.delete(id);
  }

  Future<void> deleteNotePermanently(String id) async {
    await _wasteBasketBox.delete(id);
  }

  Future<void> updateWaste(NoteModel updatedWaste) async {
    await _wasteBasketBox.put(updatedWaste.id, updatedWaste);
  }
}
