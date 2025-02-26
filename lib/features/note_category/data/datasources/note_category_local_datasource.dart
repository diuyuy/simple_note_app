import 'package:hive_ce/hive.dart';

import '../models/note_category_model.dart';

class NoteCategoryLocalDatasource {
  final Box<NoteCategoryModel> _box;
  final Box<List<String>> _orderBox;

  NoteCategoryLocalDatasource(this._box, this._orderBox);

  String get _orderBoxKey => 'order';

  Future<void> createNoteCategory(NoteCategoryModel newNoteCategory) async {
    await _box.put(newNoteCategory.id, newNoteCategory);
    await addNewCategoryOrder(newNoteCategory.id);
  }

  List<NoteCategoryModel> getAllNoteCategories() {
    final orders = _orderBox.get(_orderBoxKey) ?? [];
    final categories = _box.values;
    List<NoteCategoryModel> orderdCategory = [];
    for (var id in orders) {
      orderdCategory
          .add(categories.firstWhere((category) => category.id == id));
    }

    return orderdCategory;
  }

  Future<void> updateNoteCategory(NoteCategoryModel updatedNoteCategory) async {
    await _box.put(updatedNoteCategory.id, updatedNoteCategory);
  }

  Future<void> deleteNoteCategory(String id) async {
    await _box.delete(id);
    await deleteCategoryOrder(id);
  }

  Future<void> addNewCategoryOrder(String id) async {
    var orders = _orderBox.get(_orderBoxKey) ?? <String>[];
    orders.insert(0, id);
    await _orderBox.put(_orderBoxKey, orders);
  }

  Future<void> deleteCategoryOrder(String id) async {
    var orders = _orderBox.get(_orderBoxKey) ?? <String>[];
    if (orders.isEmpty) {
      throw Exception('존재하지 않는 카테고리 ID');
    }

    orders.remove(id);
    await _orderBox.put(_orderBoxKey, orders);
  }

  Future<void> reorderCategory(List<String> newOrders) async {
    await _orderBox.put(_orderBoxKey, newOrders);
  }
}
