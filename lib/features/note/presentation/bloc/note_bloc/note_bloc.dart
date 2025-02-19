import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    on<_DeleteNote>(_onDeleteNote);
    on<_ReorderNotes>(_onReorderNotes);
    on<_RestoreNote>(_onRestoreNote);
  }

  final CreateNoteUseCase createNoteUseCase;
  final LoadNotesUseCase loadNotesUseCase;
  final UpdateNoteUseCase updateNoteUseCase;
  final DeleteNoteUseCase deleteNoteUseCase;
  final ReorderNotesUseCase reorderNotesUseCase;

  final Uuid _uuid = Uuid();

  Future<void> _onCreateNote(_CreateNote event, Emitter<NoteState> emit) async {
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

    emit(_Loaded(notes: loadNotesUseCase.execute()));
  }

  void _onLoadNotes(_LoadNotes event, Emitter<NoteState> emit) {
    final notes = loadNotesUseCase.execute();

    emit(_Loaded(notes: notes));
  }

  Future<void> _onUpdateNote(_UpdateNote event, Emitter<NoteState> emit) async {
    final index = state.notes.indexWhere((note) => note.id == event.id);
    final currentNote = state.notes[index];

    final updatedNote = currentNote.copyWith(
      title: event.title ?? currentNote.title,
      content: event.content ?? currentNote.content,
      createDate: currentNote.createDate,
      isFavorite: event.isFavorite ?? currentNote.isFavorite,
      category: event.category ?? currentNote.category,
    );

    await updateNoteUseCase.execute(updatedNote);

    emit(_Loaded(notes: loadNotesUseCase.execute()));
  }

  Future<void> _onDeleteNote(_DeleteNote event, Emitter<NoteState> emit) async {
    await deleteNoteUseCase.execute(event.deletedNote);

    emit(_Loaded(notes: loadNotesUseCase.execute()));
  }

  Future<void> _onReorderNotes(
      _ReorderNotes event, Emitter<NoteState> emit) async {
    List<Note> orderdNotes = event.newOrder.map((id) {
      final note = state.notes.firstWhere((note) => note.id == id);

      return note;
    }).toList();

    emit(_Loaded(notes: orderdNotes));
    await reorderNotesUseCase.execute(event.newOrder);
  }

  void _onRestoreNote(_RestoreNote event, Emitter<NoteState> emit) {
    var notes = [...state.notes];
    notes.insert(0, event.restoredNote);

    emit(_Loaded(notes: notes));
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log('$error');
    super.onError(error, stackTrace);
  }

  @override
  void onChange(Change<NoteState> change) {
    log('${DateTime.now()}');
    super.onChange(change);
  }
}
