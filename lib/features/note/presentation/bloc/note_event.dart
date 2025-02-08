part of 'note_bloc.dart';

abstract class NoteEvent extends Equatable {
  const NoteEvent();

  @override
  List<Object> get props => [];
}

final class NoteCreateRequested extends NoteEvent {
  const NoteCreateRequested(
      {required this.title,
      this.content,
      required this.createDate,
      this.isPinned,
      this.category});

  final String title;
  final String? content;
  final String createDate;
  final bool? isPinned;
  final String? category;

  @override
  List<Object> get props => [title, createDate];
}

final class NoteFetchRequested extends NoteEvent {
  const NoteFetchRequested();
}

final class NoteUpdateRequested extends NoteEvent {
  const NoteUpdateRequested({
    required this.id,
    this.title,
    this.content,
    this.createDate,
    this.isPinned,
    this.category,
  });

  final String id;
  final String? title;
  final String? content;
  final String? createDate;
  final bool? isPinned;
  final String? category;

  @override
  List<Object> get props => [id];
}

final class NoteDeleteRequested extends NoteEvent {
  const NoteDeleteRequested({required this.id});

  final String id;

  @override
  List<Object> get props => [id];
}
