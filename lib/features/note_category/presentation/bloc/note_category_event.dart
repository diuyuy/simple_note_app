part of 'note_category_bloc.dart';

@freezed
class NoteCategoryEvent with _$NoteCategoryEvent {
  const factory NoteCategoryEvent.categoryLoaded() = _CategoryLoaded;
  const factory NoteCategoryEvent.categoryCreated({
    required String categoryName,
    required int iconCode,
    required double categoryColorA,
    required double categoryColorR,
    required double categoryColorG,
    required double categoryColorB,
  }) = _CategoryCreated;
  const factory NoteCategoryEvent.categoryUpdated({
    required String id,
    String? categoryName,
    int? iconCode,
    double? categoryColorA,
    double? categoryColorR,
    double? categoryColorG,
    double? categoryColorB,
  }) = _CategoryUpdated;
  const factory NoteCategoryEvent.categoryDeleted(
      {required NoteCategory deletedNoteCategory}) = _CategoryDeleted;
  const factory NoteCategoryEvent.categoryReordered(
      {required int oldIndex, required int newIndex}) = _CategoryReordered;
}
