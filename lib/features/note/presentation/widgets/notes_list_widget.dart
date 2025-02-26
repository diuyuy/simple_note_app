import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/note_selection_args.dart';
import '../../../../core/router/router_path.dart';
import '../../../../core/widgets/tirigger_haptick_feedback.dart';
import '../bloc/note_bloc/note_bloc.dart';
import 'empty_note_text_widget.dart';
import 'note_card_widget.dart';

class NotesListWidget extends StatelessWidget {
  const NotesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(
      builder: (context, state) {
        final notes = state.notes;

        return notes.isNotEmpty
            ? ListView.builder(
                itemBuilder: (context, index) {
                  final note = notes[index];

                  return GestureDetector(
                    onLongPress: () async {
                      await triggerHaptickFeedBack();
                      if (context.mounted) {
                        context.push(
                          RouterPath.noteSelectionPage,
                          extra: SelectionPageArgs(
                            selectedNotes: [note.id],
                          ),
                        );
                      }
                    },
                    onTap: () {
                      context.push(
                        RouterPath.readNotePage,
                        extra: notes[index].id,
                      );
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
                  );
                },
                itemCount: state.notes.length,
              )
            : EmptyNoteTextWidget(
                content: 'NotesListWidget.tryCreateNote'.tr(),
              );
      },
    );
  }
}
