import '../entities/note_category.dart';

abstract interface class NoteCategoryRepository {
  Future<void> createNoteCategory(NoteCategory newNoteCategory);
  List<NoteCategory> getAllNoteCategories();
  Future<void> updateNoteCategory(NoteCategory updatedNoteCategory);
  Future<void> deleteNoteCategory(String deletedNoteCategoryId);
  Future<void> reorderNoteCategory(List<String> newOrders);
}
