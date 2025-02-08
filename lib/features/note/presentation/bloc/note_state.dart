part of 'note_bloc.dart';

abstract class NoteState extends Equatable {
  const NoteState(this.notes);

  final List<Note> notes;

  @override
  List<Object> get props => [notes];
}

final class NoteInitial extends NoteState {
  const NoteInitial() : super(const <Note>[]);
}

final class NoteLoadSuccess extends NoteState {
  const NoteLoadSuccess(super.notes);
}
