import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required String id,
    required String title,
    String? content,
    required String createDate,
    String? updateDate,
    @Default(false) bool isPinned,
    String? category,
  }) = _Note;
}
