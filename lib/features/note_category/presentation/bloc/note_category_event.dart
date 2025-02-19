part of 'note_category_bloc.dart';

@freezed
class NoteCategoryEvent with _$NoteCategoryEvent {
  const factory NoteCategoryEvent.categoryLoaded() = _CategoryLoaded;
  const factory NoteCategoryEvent.categoryCreated({
    required String categoryName,
    required int iconCode,
    required int categoryColor,
  }) = _CategoryCreated;
  const factory NoteCategoryEvent.categoryUpdated({
    required String id,
    String? categoryName,
    int? iconCode,
    int? categoryColor,
  }) = _CategoryUpdated;
  const factory NoteCategoryEvent.categoryDeleted(
      {required NoteCategory deletedNoteCategory}) = _CategoryDeleted;
}
