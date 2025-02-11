part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState.initial({required List<Note> notes}) = _Initial;
  const factory NoteState.loaded({required List<Note> notes}) = _Loaded;
}
