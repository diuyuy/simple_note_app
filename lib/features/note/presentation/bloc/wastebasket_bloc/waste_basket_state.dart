part of 'waste_basket_bloc.dart';

@freezed
class WasteBasketState with _$WasteBasketState {
  const factory WasteBasketState.initial({required List<Note> notes}) =
      _Initial;
  const factory WasteBasketState.loadWastes({required List<Note> notes}) =
      _LoadWastes;
}
