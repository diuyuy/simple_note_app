import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_category.freezed.dart';

@freezed
class NoteCategory with _$NoteCategory {
  const factory NoteCategory({
    required String id,
    required String categoryName,
    required int iconCode,
    required int categoryColor,
  }) = _NoteCategory;
}
