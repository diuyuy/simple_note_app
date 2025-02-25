import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/enum/selected_item.dart';
import '../../../../../core/utils/dialog_and_snackbar/show_alert_dialog.dart';
import '../../../../../core/utils/dialog_and_snackbar/show_selected_empty_dialog.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_item_button.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../widgets/selection/assign_category_bottom_sheet.dart';
import '../../widgets/selection/select_note_widget.dart';

class NoteSelectionPage extends StatefulWidget {
  const NoteSelectionPage({
    super.key,
    required this.selectedNotes,
  });

  final List<String> selectedNotes;

  @override
  State<NoteSelectionPage> createState() => _NoteSelectionPageState();
}

class _NoteSelectionPageState extends State<NoteSelectionPage> {
  late List<String> selectedNotes;

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

  void cancelSelect() {
    setState(() {
      selectedNotes.clear();
    });
  }

  void selectAll(Iterable<String> allNotes) {
    setState(() {
      selectedNotes.clear();
      selectedNotes.addAll(allNotes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('NoteSelectionPage.select'.tr()),
        actions: [
          Builder(builder: (context) {
            return TextButton(
              onPressed: () {
                final notes = context.read<NoteBloc>().state.notes;

                selectAll(notes.map((note) => note.id));
              },
              child: Text('NoteSelectionPage.selectAll'.tr()),
            );
          }),
          TextButton(
            onPressed: () {
              cancelSelect();
            },
            child: Text('NoteSelectionPage.deselectAll'.tr()),
          ),
          MyMenuAnchor(
            menuChildren: buildMenuitemButtonList(context),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final noteState = context.watch<NoteBloc>().state;

              return noteState.when(
                initial: (notes) => const SizedBox.shrink(),
                success: (notes) {
                  return ListView(
                    children: notes.map((note) {
                      return SelectNoteWidget(
                        isSelected: selectedNotes.contains(note.id),
                        id: note.id,
                        title: note.title,
                        date: note.updateDate ?? note.createDate,
                        isFavorite: note.isFavorite,
                        onTap: onTapSelectNoteWidget,
                      );
                    }).toList(),
                  );
                },
                failure: (notes, errorMessage) => Center(
                  child: Text(errorMessage),
                ),
              );

              // return ListView(
              //   children: notes.map((note) {
              //     return SelectNoteWidget(
              //       isSelected: selectedNotes.contains(note.id),
              //       id: note.id,
              //       title: note.title,
              //       content: note.content ?? '',
              //       query: widget.previousPage == PreviousPage.search
              //           ? context.watch<SearchNotesBloc>().state.query
              //           : '',
              //       date: note.updateDate ?? note.createDate,
              //       isFavorite: note.isFavorite,
              //       previousPage: widget.previousPage,
              //       onTap: onTapCheckIcon,
              //     );
              //   }).toList(),
              // );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> buildMenuitemButtonList(
    BuildContext context,
  ) {
    final notes = context.watch<NoteBloc>().state.notes;

    final selected = notes.where((note) => selectedNotes.contains(note.id));
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
                      category: selectedCategory,
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
        child: Text('Delete'.tr()),
      ),
    ];
  }

  Future<String?> showAssignCategoryModal(
      BuildContext context, String? currentCategory) async {
    return await showModalBottomSheet<String>(
      context: context,
      builder: (context) => AssignCategoryBottomSheet(
        currentCategory: currentCategory,
      ),
    );
  }
}
