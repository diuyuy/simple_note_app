import 'package:hive_ce/hive.dart';

import '../models/note_category_model.dart';

class NoteCategoryLocalDatasource {
  final Box<NoteCategoryModel> _box;

  NoteCategoryLocalDatasource(this._box);

  Future<void> createNoteCategory(NoteCategoryModel newNoteCategory) async {
    await _box.put(newNoteCategory.id, newNoteCategory);
  }

  List<NoteCategoryModel> getAllNoteCategories() {
    return _box.values.toList();
  }

  Future<void> updateNoteCategory(NoteCategoryModel updatedNoteCategory) async {
    await _box.put(updatedNoteCategory.id, updatedNoteCategory);
  }

  Future<void> deleteNoteCategory(String id) async {
    await _box.delete(id);
  }
}
