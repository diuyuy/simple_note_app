import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/contain_query.dart';
import '../../../domain/entities/note.dart';
import '../../../domain/usecases/note_usecase/load_notes_use_case.dart';

part 'search_notes_bloc.freezed.dart';
part 'search_notes_bloc_event.dart';
part 'search_notes_bloc_state.dart';

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) {
    return events.debounceTime(duration).switchMap(mapper);
  };
}

class SearchNotesBloc extends Bloc<SearchNotesBlocEvent, SearchNotesState> {
  SearchNotesBloc({required this.loadNotesUseCase})
      : super(_Initial(query: '', notes: <Note>[])) {
    on<_LoadAllNotes>(_onLoadAllNotes);
    on<_Searched>(_onSearched,
        transformer: debounce(const Duration(milliseconds: 300)));
    on<_TapFavorite>(_onTapFavorite);
    on<_DeleteNote>(_onDeleteNote);
  }

  final LoadNotesUseCase loadNotesUseCase;

  void _onLoadAllNotes(_LoadAllNotes event, Emitter<SearchNotesState> emit) {
    try {
      final notes = loadNotesUseCase.execute();

      emit(_SearchNotesLoadSuccess(query: '', notes: notes));
    } catch (e) {
      addError(e);
      emit(_SearchNotesLoadFailure(query: '', notes: []));
    }
  }

  void _onSearched(_Searched event, Emitter<SearchNotesState> emit) {
    try {
      final notes = loadNotesUseCase.execute();

      final filteredNotes = notes.where((note) {
        String title =
            note.title.isNotEmpty ? note.title : AppConstants.untitled.tr();

        if (note.content == null) {
          return containQuery(target: title, query: event.query);
        }
        return containQuery(target: note.content!, query: event.query) ||
            containQuery(target: title, query: event.query);
      }).toList();

      emit(_SearchNotesLoadSuccess(query: event.query, notes: filteredNotes));
    } catch (e) {
      addError(e);
      emit(_SearchNotesLoadFailure(query: '', notes: []));
    }
  }

  void _onTapFavorite(_TapFavorite event, Emitter<SearchNotesState> emit) {
    final index = state.notes.indexWhere((note) => note.id == event.id);

    final selectedNote = state.notes[index];

    final updatedNote = selectedNote.copyWith(isFavorite: event.isFavorite);

    List<Note> notes = [...state.notes];
    notes[index] = updatedNote;

    emit(state.copyWith(notes: notes));
  }

  void _onDeleteNote(_DeleteNote event, Emitter<SearchNotesState> emit) {
    List<Note> notes = [...state.notes];

    notes.removeWhere((note) => note.id == event.deletedNote.id);

    emit(state.copyWith(notes: notes));
  }

  @override
  void onEvent(SearchNotesBlocEvent event) {
    log('Search event: $event');
    super.onEvent(event);
  }

  @override
  void onChange(Change<SearchNotesState> change) {
    log('On change: $change');
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log(error.toString());
    super.onError(error, stackTrace);
  }
}
