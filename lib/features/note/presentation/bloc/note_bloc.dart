import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/note.dart';
import '../../domain/repositories/note_repository.dart';

part 'note_bloc.freezed.dart';
part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc(this._repository) : super(_Initial(notes: const <Note>[])) {
    on<_CreateNote>(_onCreateNote);
    on<_LoadNotes>(_onLoadNotes);
    on<_UpdateNote>(_onUpdateNote);
    on<_DeleteNote>(_onDeleteNote);
    on<_ReorderNotes>(_onReorderNotes);
  }

  final NoteRepository _repository;
  final Uuid _uuid = Uuid();

  Future<void> _onCreateNote(_CreateNote event, Emitter<NoteState> emit) async {
    final id = _uuid.v4();

    final newNote = Note(
      id: id,
      title: event.title,
      content: event.content,
      createDate: event.createDate,
      isPinned: event.isPinned ?? false,
      category: event.category,
    );

    await _repository.addNote(newNote);

    emit(_Loaded(notes: _repository.getNoteList()));
  }

  void _onLoadNotes(_LoadNotes event, Emitter<NoteState> emit) {
    final notes = _repository.getNoteList();

    emit(_Loaded(notes: notes));
  }

  Future<void> _onUpdateNote(_UpdateNote event, Emitter<NoteState> emit) async {
    final index = state.notes.indexWhere((note) => note.id == event.id);
    final currentNote = state.notes[index];

    final updatedNote = currentNote.copyWith(
      title: event.title ?? currentNote.title,
      content: event.content ?? currentNote.content,
      createDate: currentNote.createDate,
      isPinned: event.isPinned ?? currentNote.isPinned,
      category: event.category ?? currentNote.category,
    );

    await _repository.updateNote(updatedNote);

    emit(_Loaded(notes: _repository.getNoteList()));
  }

  Future<void> _onDeleteNote(_DeleteNote event, Emitter<NoteState> emit) async {
    await _repository.deleteNote(event.id);

    emit(_Loaded(notes: _repository.getNoteList()));
  }

  Future<void> _onReorderNotes(
      _ReorderNotes event, Emitter<NoteState> emit) async {
    List<Note> orderdNotes = [...state.notes];
    int oldIndex = event.oldIndex;
    int newIndex = event.newIndex;
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final Note note = orderdNotes.removeAt(oldIndex);
    orderdNotes.insert(newIndex, note);

    emit(_Loaded(notes: orderdNotes));
    await _repository.reorderNotes(event.oldIndex, event.newIndex);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error');
    super.onError(error, stackTrace);
  }

  @override
  void onChange(Change<NoteState> change) {
    log('${DateTime.now()}');
    super.onChange(change);
  }
}
