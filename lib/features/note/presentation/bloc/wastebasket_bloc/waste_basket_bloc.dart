import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/note.dart';
import '../../../domain/usecases/wastebaseket_usecase/delete_permanently_user_case.dart';
import '../../../domain/usecases/wastebaseket_usecase/load_wastes_use_case.dart';
import '../../../domain/usecases/wastebaseket_usecase/restore_note_user_case.dart';

part 'waste_basket_bloc.freezed.dart';
part 'waste_basket_event.dart';
part 'waste_basket_state.dart';

class WasteBasketBloc extends Bloc<WasteBasketEvent, WasteBasketState> {
  WasteBasketBloc({
    required this.loadWastesUseCase,
    required this.restoreNoteUseCase,
    required this.deletePermanentlyUseCase,
  }) : super(_Initial(wastes: <Note>[])) {
    on<_LoadWastes>(_onLoadWastes);
    on<_RestoreNote>(_onRestoreNote);
    on<_DeletePermanently>(_onDeletePermanently);
  }

  final LoadWastesUseCase loadWastesUseCase;
  final RestoreNoteUserCase restoreNoteUseCase;
  final DeletePermanentlyUserCase deletePermanentlyUseCase;

  void _onLoadWastes(_LoadWastes event, Emitter<WasteBasketState> emit) {
    final wastes = loadWastesUseCase.execute();

    emit(_Loaded(wastes: wastes));
  }

  Future<void> _onRestoreNote(
      _RestoreNote event, Emitter<WasteBasketState> emit) async {
    await restoreNoteUseCase.execute(event.restoredNote);

    emit(_Loaded(wastes: loadWastesUseCase.execute()));
  }

  Future<void> _onDeletePermanently(
      _DeletePermanently event, Emitter<WasteBasketState> emit) async {
    await deletePermanentlyUseCase.execute(event.id);

    emit(_Loaded(wastes: loadWastesUseCase.execute()));
  }
}
