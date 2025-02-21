import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../widgets/reorder/reorderable_note_widget.dart';

class ReorderNotePage extends StatefulWidget {
  const ReorderNotePage({super.key, required this.currentOrder});

  final List<String> currentOrder;

  @override
  State<ReorderNotePage> createState() => _ReorderNotePageState();
}

class _ReorderNotePageState extends State<ReorderNotePage> {
  late List<String> notesOrder;

  @override
  void initState() {
    notesOrder = widget.currentOrder;
    super.initState();
  }

  void onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }
      final String id = notesOrder.removeAt(oldIndex);
      notesOrder.insert(newIndex, id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text('ReorderNotePage.reorderNotes'.tr()),
        actions: [
          TextButton(
            onPressed: () {
              context
                  .read<NoteBloc>()
                  .add(NoteEvent.reorderNotes(newOrder: notesOrder));
              context.pop();
            },
            child: Text('ReorderNotePage.done'.tr()),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: BlocBuilder<NoteBloc, NoteState>(
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
                  final note =
                      notes.firstWhere((note) => note.id == notesOrder[index]);

                  return ReorderableNoteWidget(
                    key: Key(note.id),
                    index: index,
                    id: note.id,
                    title: note.title,
                    date: note.updateDate ?? note.createDate,
                    isFavorite: note.isFavorite,
                  );
                },
                itemCount: notesOrder.length,
                onReorder: onReorder,
              );

              // return ReorderableListView(
              //   buildDefaultDragHandles: false,
              //   onReorder: onReorder,
              //   proxyDecorator: (child, index, animation) {
              //     return Material(
              //       elevation: 4,
              //       borderRadius: BorderRadius.circular(8),
              //       color: Colors.transparent,
              //       child: child,
              //     );
              //   },
              //   children: notesOrder.map((id) {
              //     final i = notes.indexWhere((note) => note.id == id);
              //     final note = notes[i];
              //     final index =
              //         notesOrder.indexWhere((element) => element == id);

              //     return ReorderableNoteWidget(
              //       key: Key(id),
              //       index: index,
              //       title: note.title,
              //       date: note.updateDate ?? note.createDate,
              //       isFavorite: note.isFavorite,
              //     );
              //   }).toList(),
              // );
            },
          ),
        ),
      ),
    );
  }
}
