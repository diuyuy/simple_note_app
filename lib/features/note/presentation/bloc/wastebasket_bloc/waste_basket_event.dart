part of 'waste_basket_bloc.dart';

@freezed
class WasteBasketEvent with _$WasteBasketEvent {
  const factory WasteBasketEvent.loadWastes() = _LoadWastes;
  const factory WasteBasketEvent.restoreNote({required Note restoredNote}) =
      _RestoreNote;
  const factory WasteBasketEvent.deletePermanently({required String id}) =
      _DeletePermanently;
}
