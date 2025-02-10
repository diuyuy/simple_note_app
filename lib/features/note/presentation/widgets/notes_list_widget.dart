import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/note_bloc.dart';

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
          itemBuilder: (context, index) => ReorderableDelayedDragStartListener(
            key: Key(notes[index].id),
            index: index,
            child: GestureDetector(
              onTap: () {
                context.go('/read', extra: notes[index].id);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.transparent),
                ),
                child: ListTile(
                  leading: Icon(Icons.note_rounded),
                  title: Text(notes[index].title),
                  subtitle: Text(notes[index].createDate),
                ),
              ),
            ),
          ),
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
