import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    required String id,
    required String title,
    String? content,
    required String createDate,
    @Default(false) bool isPinned,
    String? category,
  }) = _NoteModel;
}
