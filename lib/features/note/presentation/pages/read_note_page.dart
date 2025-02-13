import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/note.dart';
import '../bloc/note_bloc/note_bloc.dart';

class ReadNotePage extends StatelessWidget {
  const ReadNotePage({super.key, required this.noteId});

  final String noteId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          BlocBuilder<NoteBloc, NoteState>(
            builder: (context, state) {
              final selectedNote = state.notes.firstWhere(
                (note) => note.id == noteId,
                orElse: () => Note(
                  id: '',
                  title: '',
                  createDate: '',
                ),
              );

              return IconButton(
                onPressed: () {
                  context.read<NoteBloc>().add(
                        NoteEvent.updateNote(
                          id: noteId,
                          isFavorite: !selectedNote.isFavorite,
                        ),
                      );
                },
                icon: Icon(
                  selectedNote.isFavorite ? Icons.star : Icons.star_border,
                  color: Theme.of(context).colorScheme.primary,
                ),
              );
            },
          ),
          MenuAnchor(
            //alignmentOffset: Offset(, 0),
            style: MenuStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.only(right: 8)),
            ),
            menuChildren: getMenuItemButtonList(context),
            builder: (context, controller, child) {
              return IconButton(
                onPressed: () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
                icon: Icon(Icons.more_vert),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: SingleChildScrollView(
            child: Builder(
              builder: (context) {
                final noteState = context.watch<NoteBloc>().state;

                final Note selectedNote = noteState.notes.firstWhere(
                  (note) => note.id == noteId,
                  orElse: () => Note(id: '', title: '', createDate: ''),
                );

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        selectedNote.title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        selectedNote.content ?? '',
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<bool?> showDeleteDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('ReadNotePage.delete'.tr()),
          content: Text('ReadNotePage.deleteDialogConent'.tr()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text('ReadNotePage.cancel'.tr()),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('ReadNotePage.ok'.tr()),
            )
          ],
        );
      },
    );
  }

  List<Widget> getMenuItemButtonList(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;

    return [
      MenuItemButton(
        onPressed: () {
          context.go('$currentPath/update', extra: noteId);
        },
        child: Text('ReadNotePage.edit'.tr()),
      ),
      MenuItemButton(
        onPressed: () async {
          final isConfirm = await showDeleteDialog(context);
          if (isConfirm == true) {
            if (context.mounted) {
              context.read<NoteBloc>().add(NoteEvent.deleteNote(id: noteId));
              context.pop();
            }
          }
        },
        child: Text('ReadNotePage.delete'.tr()),
      ),
    ];
  }
}
