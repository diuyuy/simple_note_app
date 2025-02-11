import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/color_container_widget.dart';
import '../bloc/note_bloc.dart';

class NotesListWidget extends StatelessWidget {
  const NotesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

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
                  leading: ColorContainerWidget(
                    color: primaryColor,
                    alpha: 80,
                    width: 36,
                    child: Icon(
                      Icons.note_rounded,
                      color: primaryColor,
                    ),
                  ),
                  title: Text(
                    notes[index].title,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'NoteListWidget.updateDate'.tr(
                      args: [
                        notes[index].updateDate ?? notes[index].createDate
                      ],
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      context.read<NoteBloc>().add(
                            NoteEvent.updateNote(
                              id: notes[index].id,
                              isPinned: !notes[index].isPinned,
                            ),
                          );
                    },
                    child: Icon(
                      notes[index].isPinned
                          ? Icons.push_pin
                          : Icons.push_pin_outlined,
                      color: primaryColor,
                    ),
                  ),
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
