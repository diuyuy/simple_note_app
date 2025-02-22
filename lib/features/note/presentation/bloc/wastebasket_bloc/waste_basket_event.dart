part of 'waste_basket_bloc.dart';

@freezed
class WasteBasketEvent with _$WasteBasketEvent {
  const factory WasteBasketEvent.loadWastes() = _LoadWastes;

  const factory WasteBasketEvent.restoreNotes(
      {required List<Note> restoredNotes}) = _RestoreNotes;

  const factory WasteBasketEvent.deletePermanently(
      {required List<String> noteIds}) = _DeletePermanently;
}
