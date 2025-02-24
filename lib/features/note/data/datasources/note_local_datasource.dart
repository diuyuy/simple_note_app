import 'package:hive_ce/hive.dart';

import '../models/note_model.dart';
import '../models/note_order.dart';

class NoteLocalDatasource {
  NoteLocalDatasource(this._box, this._orderBox);

  final Box<NoteModel> _box;
  final Box<NoteOrder> _orderBox;

  Future<void> addNote(NoteModel newNote) async {
    await _box.put(newNote.id, newNote);
    await insertOrder(0, newNote.id);
  }

  NoteModel getNote(String id) {
    final note = _box.get(id);

    if (note == null) throw Exception('Invalid note Id');

    return note;
  }

  List<NoteModel> getNoteList() {
    if (_orderBox.isEmpty) {
      _orderBox.add(NoteOrder());
    }
    final noteOrder = _orderBox.getAt(0) ?? NoteOrder();
    final order = noteOrder.order;
    final List<NoteModel> notes = [];

    for (int i = 0; i < order.length; i++) {
      notes.add(_box.get(order[i])!);
    }

    return notes;
  }

  Future<void> updateNote(NoteModel updatedNote) async {
    await _box.put(updatedNote.id, updatedNote);
  }

  Future<void> deleteNote(String id) async {
    await _box.delete(id);
    final noteOrder = _orderBox.getAt(0);
    if (noteOrder == null) throw Exception('open order box error');

    List<String> order = [...noteOrder.order];
    order.removeWhere((element) => element == id);

    _orderBox.putAt(0, NoteOrder(order: order));
  }

  Future<void> reorderNotes(List<String> newOrder) async {
    final noteOrder = _orderBox.getAt(0);

    if (noteOrder == null) throw Exception('open order box error');

    await _orderBox.putAt(0, NoteOrder(order: newOrder));
  }

  Future<void> insertOrder(int index, String id) async {
    final noteOrder = _orderBox.getAt(0) ?? NoteOrder();

    final orderList = [...noteOrder.order];

    orderList.insert(index, id);
    await _orderBox.putAt(0, NoteOrder(order: orderList));
  }

  Future<void> restoreNote(NoteModel restoredNote) async {
    await addNote(restoredNote);
  }
}
