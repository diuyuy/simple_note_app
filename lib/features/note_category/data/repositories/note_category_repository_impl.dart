import '../../domain/entities/note_category.dart';
import '../../domain/repositories/note_category_repository.dart';
import '../datasources/note_category_local_datasource.dart';
import '../models/note_category_model.dart';

class NoteCategoryRepositoryImpl implements NoteCategoryRepository {
  final NoteCategoryLocalDatasource _localDatasource;

  NoteCategoryRepositoryImpl(this._localDatasource);

  @override
  Future<void> createNoteCategory(NoteCategory newNoteCategory) async {
    await _localDatasource.createNoteCategory(entityToModel(newNoteCategory));
  }

  @override
  List<NoteCategory> getAllNoteCategories() {
    final noteCategories = _localDatasource.getAllNoteCategories();
    return noteCategories.map((category) => modelToEntity(category)).toList();
  }

  @override
  Future<void> updateNoteCategory(NoteCategory updatedNoteCategory) async {
    await _localDatasource
        .updateNoteCategory(entityToModel(updatedNoteCategory));
  }

  @override
  Future<void> deleteNoteCategory(NoteCategory deletedNoteCategory) async {
    await _localDatasource.deleteNoteCategory(deletedNoteCategory.id);
  }

  @override
  Future<void> reorderNoteCategory(int oldIndex, int newIndex) async {
    await _localDatasource.reorderCategory(oldIndex, newIndex);
  }

  NoteCategory modelToEntity(NoteCategoryModel noteCategory) {
    return NoteCategory(
      id: noteCategory.id,
      categoryName: noteCategory.categoryName,
      iconCode: noteCategory.iconCode,
      categoryColorA: noteCategory.categoryColorA,
      categoryColorR: noteCategory.categoryColorR,
      categoryColorG: noteCategory.categoryColorG,
      categoryColorB: noteCategory.categoryColorB,
    );
  }

  NoteCategoryModel entityToModel(NoteCategory noteCategory) {
    return NoteCategoryModel(
      id: noteCategory.id,
      categoryName: noteCategory.categoryName,
      iconCode: noteCategory.iconCode,
      categoryColorA: noteCategory.categoryColorA,
      categoryColorR: noteCategory.categoryColorR,
      categoryColorG: noteCategory.categoryColorG,
      categoryColorB: noteCategory.categoryColorB,
    );
  }
}
