part of 'waste_basket_bloc.dart';

@freezed
class WasteBasketState with _$WasteBasketState {
  const factory WasteBasketState.initial({required List<Note> wastes}) =
      _Initial;
  const factory WasteBasketState.loaded({required List<Note> wastes}) = _Loaded;
}
