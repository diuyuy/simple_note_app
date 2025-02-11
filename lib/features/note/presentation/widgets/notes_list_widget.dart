import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/note_card_widget.dart';
import '../bloc/note_bloc/note_bloc.dart';

class NotesListWidget extends StatelessWidget {
  const NotesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(
      builder: (context, state) {
        final notes = state.notes;

        return ReorderableListView.builder(
          proxyDecorator: (child, index, animation) {
            return Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(8),
              color: Colors.transparent,
              child: child,
            );
          },
          itemBuilder: (context, index) {
            final note = notes[index];

            return ReorderableDelayedDragStartListener(
              key: Key(note.id),
              index: index,
              child: GestureDetector(
                onTap: () {
                  context.go('/read', extra: notes[index].id);
                },
                child: NoteCardWidget(
                  title: note.title,
                  date: note.updateDate ?? note.createDate,
                  isFavorite: note.isFavorite,
                  onTapTrailing: () {
                    context.read<NoteBloc>().add(
                          NoteEvent.updateNote(
                            id: notes[index].id,
                            isFavorite: !notes[index].isFavorite,
                          ),
                        );
                  },
                ),
              ),
            );
          },
          itemCount: state.notes.length,
          onReorder: (oldIndex, newIndex) {
            context.read<NoteBloc>().add(
                NoteEvent.reorderNotes(oldIndex: oldIndex, newIndex: newIndex));
          },
        );
      },
    );
  }
}
