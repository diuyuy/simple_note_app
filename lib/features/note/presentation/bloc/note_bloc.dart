import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/note.dart';
import '../../domain/repositories/note_repository.dart';

part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final NoteRepository _repository;
  final Uuid _uuid = Uuid();

  NoteBloc(this._repository) : super(NoteInitial()) {
    on<NoteFetchRequested>(_onNoteFetchRequested);
    on<NoteCreateRequested>(_onNoteCreateRequested);
    on<NoteUpdateRequested>(_onNoteUpdateRequested);
    on<NoteDeleteRequested>(_onNoteDeleteRequested);
  }

  Future<void> _onNoteCreateRequested(
      NoteCreateRequested event, Emitter<NoteState> emit) async {
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

    emit(NoteLoadSuccess(_repository.getNoteList()));
  }

  void _onNoteFetchRequested(
      NoteFetchRequested event, Emitter<NoteState> emit) {
    final notes = _repository.getNoteList();

    emit(NoteLoadSuccess(notes));
  }

  Future<void> _onNoteUpdateRequested(
      NoteUpdateRequested event, Emitter<NoteState> emit) async {
    final index = state.notes.indexWhere((note) => note.id == event.id);
    final selectedNote = state.notes[index];

    final updatedNote = selectedNote.copyWith(
      title: event.title ?? selectedNote.title,
      content: event.content ?? selectedNote.content,
      createDate: event.createDate ?? selectedNote.createDate,
      isPinned: event.isPinned ?? selectedNote.isPinned,
      category: event.category ?? selectedNote.category,
    );

    await _repository.updateNote(updatedNote);

    emit(NoteLoadSuccess(_repository.getNoteList()));
  }

  Future<void> _onNoteDeleteRequested(
      NoteDeleteRequested event, Emitter<NoteState> emit) async {
    await _repository.deleteNote(event.id);

    emit(NoteLoadSuccess(_repository.getNoteList()));
  }
}
