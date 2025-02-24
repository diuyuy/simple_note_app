part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.createNote({
    required String title,
    String? content,
    required String createDate,
    bool? isFavorite,
    String? category,
  }) = _CreateNote;

  const factory NoteEvent.loadNotes() = _LoadNotes;

  const factory NoteEvent.updateNote({
    required String id,
    String? title,
    String? content,
    String? updateDate,
    bool? isFavorite,
    String? category,
  }) = _UpdateNote;

  const factory NoteEvent.updateMultipleNotesCategory({
    required List<String> noteIds,
    required String category,
  }) = _UpdateMultipleNotesCategory;

  const factory NoteEvent.deleteNote({
    required String deletedNote,
  }) = _DeleteNote;

  const factory NoteEvent.deleteMultipleNotes({
    required List<String> deletedNotes,
  }) = _DeleteMultipleNotes;

  const factory NoteEvent.reorderNotes({
    required List<String> newOrder,
  }) = _ReorderNotes;

  const factory NoteEvent.restoreNotes({
    required List<String> restoredNotes,
  }) = _RestoreNotes;
}
