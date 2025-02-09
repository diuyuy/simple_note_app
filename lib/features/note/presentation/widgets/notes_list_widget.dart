import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/note_bloc.dart';

class NotesListWidget extends StatelessWidget {
  const NotesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(
      builder: (context, state) {
        final notes = state.notes;

        return ReorderableListView.builder(
          itemBuilder: (context, index) => ReorderableDelayedDragStartListener(
            index: index,
            child: Card(
              child: ListTile(
                leading: Icon(Icons.note_rounded),
                title: Text(notes[index].title),
                subtitle: Text(notes[index].createDate),
              ),
            ),
          ),
          itemCount: state.notes.length,
          onReorder: (oldIndex, newIndex) {},
        );
      },
    );
  }
}
