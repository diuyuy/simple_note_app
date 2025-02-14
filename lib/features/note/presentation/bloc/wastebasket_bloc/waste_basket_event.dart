part of 'waste_basket_bloc.dart';

@freezed
class WasteBasketEvent with _$WasteBasketEvent {
  const factory WasteBasketEvent.loaded() = _Loaded;
  const factory WasteBasketEvent.restored({required String id}) = _Restored;
  const factory WasteBasketEvent.deletePermanently({required String id}) =
      _DeletePermanently;
}
