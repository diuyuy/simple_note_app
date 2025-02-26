part of 'search_notes_bloc.dart';

@freezed
class SearchNotesBlocEvent with _$SearchNotesBlocEvent {
  const factory SearchNotesBlocEvent.loadAllNotes() = _LoadAllNotes;

  const factory SearchNotesBlocEvent.searched({required String query}) =
      _Searched;

  const factory SearchNotesBlocEvent.tapFavorite(
      {required String id, required bool isFavorite}) = _TapFavorite;

  const factory SearchNotesBlocEvent.deleteNotes({
    required List<String> deletedNotes,
  }) = _DeleteNotes;
}
