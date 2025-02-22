part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState.initial({required List<Note> notes}) = _Initial;
  const factory NoteState.success({required List<Note> notes}) =
      _NoteLoadSuccess;
  const factory NoteState.failure({
    required List<Note> notes,
    required String errorMessage,
  }) = _NoteLoadFailure;
}
