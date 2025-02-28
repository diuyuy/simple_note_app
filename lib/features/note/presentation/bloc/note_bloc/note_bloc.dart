import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:simple_note_app/core/utils/format_date.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/entities/note.dart';
import '../../../domain/usecases/note_usecase/create_note_use_case.dart';
import '../../../domain/usecases/note_usecase/delete_note_use_case.dart';
import '../../../domain/usecases/note_usecase/load_notes_use_case.dart';
import '../../../domain/usecases/note_usecase/reorder_notes_use_case.dart';
import '../../../domain/usecases/note_usecase/update_note_use_case.dart';

part 'note_bloc.freezed.dart';
part 'note_event.dart';
part 'note_state.dart';

EventTransformer<T> debounce<T>(Duration duration) {
  return (event, mapper) => event.debounceTime(duration).switchMap(mapper);
}

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc({
    required this.createNoteUseCase,
    required this.loadNotesUseCase,
    required this.updateNoteUseCase,
    required this.deleteNoteUseCase,
    required this.reorderNotesUseCase,
  }) : super(_Initial(notes: const <Note>[])) {
    on<_CreateNote>(_onCreateNote);
    on<_LoadNotes>(_onLoadNotes);
    on<_UpdateNote>(_onUpdateNote);
    on<_UpdateMultipleNotesCategory>(_onUpdateMultipleNotesCategory);
    on<_DeleteNote>(_onDeleteNote);
    on<_DeleteMultipleNotes>(_onDeleteMultipleNotes);
    on<_ReorderNotes>(_onReorderNotes);
    //on<_RestoreNotes>(_onRestoreNotes);
    on<_AutoCreateNote>(_onAutoCreateNote);
    on<_AutoUpdateNote>(_onAutoUpdateNote,
        transformer: debounce(const Duration(seconds: 1)));
  }

  final CreateNoteUseCase createNoteUseCase;
  final LoadNotesUseCase loadNotesUseCase;
  final UpdateNoteUseCase updateNoteUseCase;
  final DeleteNoteUseCase deleteNoteUseCase;
  final ReorderNotesUseCase reorderNotesUseCase;

  final Uuid _uuid = Uuid();

  Future<void> _onCreateNote(_CreateNote event, Emitter<NoteState> emit) async {
    try {
      final id = _uuid.v4();

      final newNote = Note(
        id: id,
        title: event.title,
        content: event.content,
        createDate: event.createDate,
        isFavorite: event.isFavorite ?? false,
        category: event.category,
      );

      await createNoteUseCase.execute(newNote);

      emit(_NoteLoadSuccess(notes: loadNotesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  void _onLoadNotes(_LoadNotes event, Emitter<NoteState> emit) {
    try {
      final notes = loadNotesUseCase.execute();

      emit(_NoteLoadSuccess(notes: notes));
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onUpdateNote(_UpdateNote event, Emitter<NoteState> emit) async {
    try {
      final index = state.notes.indexWhere((note) => note.id == event.id);
      final currentNote = state.notes[index];

      final updatedNote = currentNote.copyWith(
        title: event.title ?? currentNote.title,
        content: event.content ?? currentNote.content,
        createDate: currentNote.createDate,
        updateDate: event.updateDate ?? currentNote.updateDate,
        isFavorite: event.isFavorite ?? currentNote.isFavorite,
        category: event.category ?? currentNote.category,
      );

      await updateNoteUseCase.execute(updatedNote);

      emit(_NoteLoadSuccess(notes: loadNotesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onUpdateMultipleNotesCategory(
      _UpdateMultipleNotesCategory event, Emitter<NoteState> emit) async {
    try {
      final noteIds = event.noteIds;
      for (final noteId in noteIds) {
        final currentNote = state.notes.firstWhere((note) => note.id == noteId);
        final updatedNote = currentNote.copyWith(
          category: event.category,
          updateDate: formatDate(DateTime.now()),
        );
        await updateNoteUseCase.execute(updatedNote);
      }

      emit(_NoteLoadSuccess(notes: loadNotesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onDeleteNote(_DeleteNote event, Emitter<NoteState> emit) async {
    try {
      await deleteNoteUseCase.execute(event.deletedNote);

      emit(_NoteLoadSuccess(notes: loadNotesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onDeleteMultipleNotes(
      _DeleteMultipleNotes event, Emitter<NoteState> emit) async {
    try {
      final deletedNotes = event.deletedNotes;
      for (var deletedNote in deletedNotes) {
        await deleteNoteUseCase.execute(deletedNote);
      }
      emit(_NoteLoadSuccess(notes: loadNotesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onReorderNotes(
      _ReorderNotes event, Emitter<NoteState> emit) async {
    try {
      var orderdNotes = event.newOrder.map((id) {
        final note = state.notes.firstWhere((note) => note.id == id);

        return note;
      }).toList();

      emit(_NoteLoadSuccess(notes: orderdNotes));
      await reorderNotesUseCase.execute(event.newOrder);
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onAutoCreateNote(
      _AutoCreateNote event, Emitter<NoteState> emit) async {
    try {
      //final id = _uuid.v4();

      final newNote = Note(
        id: event.id,
        title: event.title,
        content: event.content,
        createDate: event.createDate,
        isFavorite: event.isFavorite ?? false,
        category: event.category,
      );

      await createNoteUseCase.execute(newNote);

      emit(_NoteLoadSuccess(notes: loadNotesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  Future<void> _onAutoUpdateNote(
      _AutoUpdateNote event, Emitter<NoteState> emit) async {
    try {
      final index = state.notes.indexWhere((note) => note.id == event.id);
      final currentNote = state.notes[index];

      final updatedNote = currentNote.copyWith(
        title: event.title ?? currentNote.title,
        content: event.content ?? currentNote.content,
        createDate: currentNote.createDate,
        updateDate: event.updateDate ?? currentNote.updateDate,
        isFavorite: event.isFavorite ?? currentNote.isFavorite,
        category: event.category ?? currentNote.category,
      );

      await updateNoteUseCase.execute(updatedNote);

      emit(_NoteLoadSuccess(notes: loadNotesUseCase.execute()));
    } catch (e) {
      addError(e);
      emit(_NoteLoadFailure(notes: [], errorMessage: e.toString()));
    }
  }

  // void _onRestoreNotes(_RestoreNotes event, Emitter<NoteState> emit) {
  //   var notes = [...state.notes];
  //   for (var restoredNote in event.restoredNotes) {
  //     notes.insert(0, restoredNote);
  //   }

  //   emit(_NoteLoadSuccess(notes: notes));
  // }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log('$error');
    super.onError(error, stackTrace);
  }

  @override
  void onChange(Change<NoteState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
