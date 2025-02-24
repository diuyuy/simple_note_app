part of 'waste_basket_bloc.dart';

@freezed
class WasteBasketState with _$WasteBasketState {
  const factory WasteBasketState.initial({
    required List<Note> wastes,
    @Default(false) bool isAfterRestore,
  }) = _Initial;
  const factory WasteBasketState.success({
    required List<Note> wastes,
    @Default(false) bool isAfterRestore,
  }) = _WasteBasketLoadSuccess;

  const factory WasteBasketState.failure({
    required List<Note> wastes,
    @Default(false) bool isAfterRestore,
    required String errorMessage,
  }) = _WasteBasketLoadFailure;
}
