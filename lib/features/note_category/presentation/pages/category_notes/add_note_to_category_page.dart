import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/widgets/bottom_action_button.dart';
import '../../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../../../../note/presentation/widgets/selection/select_note_widget.dart';

class AddNoteToCategoryPage extends StatefulWidget {
  const AddNoteToCategoryPage({super.key, required this.id});

  final String id;

  @override
  State<AddNoteToCategoryPage> createState() => _AddNoteToCategoryPageState();
}

class _AddNoteToCategoryPageState extends State<AddNoteToCategoryPage> {
  List<String> selectedNotes = [];

  void tapCheckIcon(String id) {
    setState(() {
      if (selectedNotes.contains(id)) {
        selectedNotes.remove(id);
      } else {
        selectedNotes.add(id);
      }
    });
  }

  void tapSelectAll() {
    final allNotes = context.read<NoteBloc>().state.notes;
    final notInCategoryNotes =
        allNotes.where((note) => note.category != widget.id);

    setState(() {
      selectedNotes.addAll(notInCategoryNotes.map((note) => note.id));
    });
  }

  void tapDeselctAll() {
    setState(() {
      selectedNotes.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('AddNoteToCategoryPage.select'.tr()),
        actions: [
          TextButton(
            onPressed: tapSelectAll,
            child: Text('AddNoteToCategoryPage.selectAll'.tr()),
          ),
          TextButton(
            onPressed: tapDeselctAll,
            child: Text('AddNoteToCategoryPage.deselectAll'.tr()),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) {
              final allNotes = context.watch<NoteBloc>().state.notes;
              final notInCategoryNotes =
                  allNotes.where((note) => note.category != widget.id).toList();

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: notInCategoryNotes.length,
                      itemBuilder: (context, index) {
                        final note = notInCategoryNotes[index];

                        return SelectNoteWidget(
                          isSelected: selectedNotes.contains(note.id),
                          id: note.id,
                          title: note.title,
                          date: note.updateDate ?? note.createDate,
                          isFavorite: note.isFavorite,
                          previousPage: PreviousPage.home,
                          onTap: tapCheckIcon,
                        );
                      },
                    ),
                  ),
                  BottomActionButton(
                    enabled: selectedNotes.isNotEmpty,
                    text: 'AddNoteToCategoryPage.add'.tr(),
                    onTap: () {
                      context.read<NoteBloc>().add(
                            NoteEvent.updateMultipleNotesCategory(
                              noteIds: selectedNotes,
                              category: widget.id,
                            ),
                          );

                      context.pop();
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
