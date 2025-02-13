import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/entities/note.dart';
import '../../../domain/repositories/note_repository.dart';

part 'search_notes_bloc.freezed.dart';
part 'search_notes_bloc_event.dart';
part 'search_notes_bloc_state.dart';

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) {
    return events.debounceTime(duration).switchMap(mapper);
  };
}

class SearchNotesBloc extends Bloc<SearchNotesBlocEvent, SearchNotesState> {
  SearchNotesBloc(this._repository) : super(_Initial(notes: <Note>[])) {
    on<_LoadAllNotes>(_onStarted);
    on<_Searched>(_onSearched,
        transformer: debounce(const Duration(milliseconds: 300)));
    on<_TapFavorite>(_onTapFavorite);
  }

  final NoteRepository _repository;

  void _onStarted(_LoadAllNotes event, Emitter<SearchNotesState> emit) {
    final notes = _repository.getNoteList();

    emit(_Loaded(notes: notes));
  }

  void _onSearched(_Searched event, Emitter<SearchNotesState> emit) {
    final notes = _repository.getNoteList();

    final filteredNotes = notes.where((note) {
      if (note.content == null) {
        return note.title.toLowerCase().contains(event.query.toLowerCase());
      }
      return note.content!.toLowerCase().contains(event.query.toLowerCase()) ||
          note.title.toLowerCase().contains(event.query.toLowerCase());
    }).toList();

    emit(_Loaded(notes: filteredNotes));
  }

  void _onTapFavorite(_TapFavorite event, Emitter<SearchNotesState> emit) {
    final index = state.notes.indexWhere((note) => note.id == event.id);

    final selectedNote = state.notes[index];

    final updatedNote = selectedNote.copyWith(isFavorite: event.isFavorite);

    List<Note> notes = [...state.notes];
    notes[index] = updatedNote;

    emit(_Loaded(notes: notes));

    _repository.updateNote(updatedNote);
  }
}
