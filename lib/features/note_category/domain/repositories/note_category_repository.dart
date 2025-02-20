import '../entities/note_category.dart';

abstract interface class NoteCategoryRepository {
  Future<void> createNoteCategory(NoteCategory newNoteCategory);
  List<NoteCategory> getAllNoteCategories();
  Future<void> updateNoteCategory(NoteCategory updatedNoteCategory);
  Future<void> deleteNoteCategory(NoteCategory deletedNoteCategory);
  Future<void> reorderNoteCategory(int oldIndex, int newIndex);
}
