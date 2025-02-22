import 'dart:developer';

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
    on<_RestoreNotes>(_onRestoreNote);
    on<_DeletePermanently>(_onDeletePermanently);
  }

  final LoadWastesUseCase loadWastesUseCase;
  final RestoreNoteUserCase restoreNoteUseCase;
  final DeletePermanentlyUserCase deletePermanentlyUseCase;

  void _onLoadWastes(_LoadWastes event, Emitter<WasteBasketState> emit) {
    try {
      final wastes = loadWastesUseCase.execute();

      emit(_WasteBasketLoadSuccess(wastes: wastes));
    } catch (e) {
      addError(e);
      emit(_WasteBasketLoadFailure(wastes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onRestoreNote(
      _RestoreNotes event, Emitter<WasteBasketState> emit) async {
    try {
      for (var restoredNote in event.restoredNotes) {
        await restoreNoteUseCase.execute(restoredNote);
      }

      emit(_WasteBasketLoadSuccess(wastes: loadWastesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_WasteBasketLoadFailure(wastes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onDeletePermanently(
      _DeletePermanently event, Emitter<WasteBasketState> emit) async {
    try {
      for (var noteId in event.noteIds) {
        await deletePermanentlyUseCase.execute(noteId);
      }

      emit(_WasteBasketLoadSuccess(wastes: loadWastesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_WasteBasketLoadFailure(wastes: [], errorMessage: e.toString()));
    }
  }

  @override
  void onChange(Change<WasteBasketState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
