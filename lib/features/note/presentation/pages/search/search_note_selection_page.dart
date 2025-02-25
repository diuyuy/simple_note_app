import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/enum/selected_item.dart';
import '../../../../../core/utils/assing_category/show_assing_category_modal.dart';
import '../../../../../core/utils/show_alert_dialog.dart';
import '../../../../../core/utils/show_selected_empty_dialog.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_item_button.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../bloc/search_notes_bloc/search_notes_bloc.dart';
import '../../widgets/selection/select_note_widget.dart';

class SearchNoteSelectionPage extends StatefulWidget {
  const SearchNoteSelectionPage({super.key, required this.selectedNotes});

  final List<String> selectedNotes;

  @override
  State<SearchNoteSelectionPage> createState() =>
      _SearchNoteSelectionPageState();
}

class _SearchNoteSelectionPageState extends State<SearchNoteSelectionPage> {
  late final List<String> selectedNotes;

  @override
  void initState() {
    super.initState();
    selectedNotes = widget.selectedNotes;
  }

  void onTapSelectNoteWidget(String id) {
    setState(() {
      if (selectedNotes.contains(id)) {
        selectedNotes.remove(id);
      } else {
        selectedNotes.add(id);
      }
    });
  }

  void selectAll(Iterable<String> allNotes) {
    setState(() {
      selectedNotes.clear();
      selectedNotes.addAll(allNotes);
    });
  }

  void deselectAll() {
    setState(() {
      selectedNotes.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('Select'.tr()),
        actions: [
          Builder(builder: (context) {
            final filteredNotes = context.watch<SearchNotesBloc>().state.notes;

            return TextButton(
              onPressed: () {
                selectAll(filteredNotes.map((note) => note.id));
              },
              child: Text('Select All'.tr()),
            );
          }),
          TextButton(
            onPressed: deselectAll,
            child: Text('Deselect All'.tr()),
          ),
          MyMenuAnchor(menuChildren: buildMenuItemButtonList(context)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Builder(
            builder: (context) {
              final searchNotesState = context.watch<SearchNotesBloc>().state;

              return searchNotesState.when(
                initial: (query, notes) => const SizedBox.shrink(),
                success: (query, notes) {
                  return ListView(
                    children: notes.map((note) {
                      return SelectNoteWidget(
                        isSelected: selectedNotes.contains(note.id),
                        id: note.id,
                        title: note.title,
                        date: note.updateDate ?? note.createDate,
                        isFavorite: note.isFavorite,
                        previousPage: PreviousPage.search,
                        onTap: onTapSelectNoteWidget,
                      );
                    }).toList(),
                  );
                },
                failure: (query, notes) => Center(
                  child: Text(''),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> buildMenuItemButtonList(BuildContext context) {
    final filteredNotes = context.watch<SearchNotesBloc>().state.notes;

    final selected =
        filteredNotes.where((note) => selectedNotes.contains(note.id));

    return [
      MyMenuItemButton(
        onPressed: () async {
          if (selectedNotes.isEmpty) {
            showSelectedEmptyDialog(context, SelectedItem.note);
            return;
          }
          final categorySet = selected.map((note) => note.category).toSet();
          String? currentCategory;
          if (categorySet.length == 1) {
            currentCategory = categorySet.first;
          }

          final selectedCategory =
              await showAssignCategoryModal(context, currentCategory);

          if (selectedCategory != null) {
            if (context.mounted) {
              context.read<NoteBloc>().add(
                    NoteEvent.updateMultipleNotesCategory(
                      noteIds: selectedNotes,
                      category: currentCategory!,
                    ),
                  );

              context.pop();
            }
          }
        },
        child: Text('Assign Category'.tr()),
      ),
      MyMenuItemButton(
        onPressed: () async {
          if (selectedNotes.isEmpty) {
            showSelectedEmptyDialog(context, SelectedItem.note);
            return;
          }

          final isConfirm = await showAlertDialog(
                context: context,
                title: 'NoteSelectionPage.delete'.tr(),
                content: 'NoteSelectionPage.deleteDialogContent'
                    .tr(args: [selectedNotes.length.toString()]),
              ) ??
              false;

          if (isConfirm) {
            if (context.mounted) {
              context.read<NoteBloc>().add(
                    NoteEvent.deleteMultipleNotes(
                      deletedNotes: selectedNotes,
                    ),
                  );

              context.pop();
            }
          }
        },
        child: Text('Delete'),
      ),
    ];
  }
}
