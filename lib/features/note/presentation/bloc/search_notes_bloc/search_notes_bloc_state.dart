part of 'search_notes_bloc.dart';

@freezed
class SearchNotesState with _$SearchNotesState {
  const factory SearchNotesState.initial(
      {required String query, required List<Note> notes}) = _Initial;
  const factory SearchNotesState.loaded(
      {required String query, required List<Note> notes}) = _Loaded;
}
