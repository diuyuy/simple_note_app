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

  NoteCategory modelToEntity(NoteCategoryModel noteCategory) {
    return NoteCategory(
      id: noteCategory.id,
      categoryName: noteCategory.categoryName,
      iconCode: noteCategory.iconCode,
      categoryColor: noteCategory.categoryColor,
    );
  }

  NoteCategoryModel entityToModel(NoteCategory noteCategory) {
    return NoteCategoryModel(
      id: noteCategory.id,
      categoryName: noteCategory.categoryName,
      iconCode: noteCategory.iconCode,
      categoryColor: noteCategory.categoryColor,
    );
  }
}
