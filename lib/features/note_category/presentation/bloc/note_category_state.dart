part of 'note_category_bloc.dart';

@freezed
class NoteCategoryState with _$NoteCategoryState {
  const factory NoteCategoryState.initial(
      {required List<NoteCategory> categories}) = _Initial;
  const factory NoteCategoryState.loadSuccess(
      {required List<NoteCategory> categories}) = _NoteCategoryLoadSuccess;
  const factory NoteCategoryState.failure({
    required List<NoteCategory> categories,
    required String errorMessage,
  }) = _NoteCategoryLoadFailure;
}
