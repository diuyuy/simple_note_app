import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/features/note_category/presentation/widgets/selection/change_category_bottom_sheet.dart';

import '../../../../../core/enum/selected_item.dart';
import '../../../../../core/utils/show_alert_dialog.dart';
import '../../../../../core/utils/show_selected_empty_dialog.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_item_button.dart';
import '../../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../../../../note/presentation/widgets/selection/select_note_widget.dart';

class CategoryNotesSelectionPage extends StatefulWidget {
  const CategoryNotesSelectionPage({
    super.key,
    required this.categoryId,
    required this.selectedNotes,
  });

  final String categoryId;
  final List<String> selectedNotes;

  @override
  State<CategoryNotesSelectionPage> createState() =>
      _CategoryNotesSelectionPageState();
}

class _CategoryNotesSelectionPageState
    extends State<CategoryNotesSelectionPage> {
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
            final notes = context.watch<NoteBloc>().state.notes;

            final categoryNotes = notes
                .where((note) => note.category == widget.categoryId)
                .map((note) => note.id);

            return TextButton(
              onPressed: () {
                selectAll(categoryNotes);
              },
              child: Text('Select All'.tr()),
            );
          }),
          TextButton(
            onPressed: deselectAll,
            child: Text('Deselect All'.tr()),
          ),
          BlocListener<NoteBloc, NoteState>(
            listener: (context, state) {
              context.pop();
            },
            child: MyMenuAnchor(menuChildren: buildMenuItemButtonList(context)),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Builder(
            builder: (context) {
              final noteState = context.watch<NoteBloc>().state;

              return noteState.when(
                initial: (notes) => const SizedBox.shrink(),
                success: (notes) {
                  final categoryNotes = notes
                      .where((note) => note.category == widget.categoryId)
                      .toList();

                  return ListView.builder(
                    itemCount: categoryNotes.length,
                    itemBuilder: (context, index) {
                      final note = categoryNotes[index];

                      return SelectNoteWidget(
                        isSelected: selectedNotes.contains(note.id),
                        id: note.id,
                        title: note.title,
                        date: note.updateDate ?? note.createDate,
                        isFavorite: note.isFavorite,
                        onTap: onTapSelectNoteWidget,
                      );
                    },
                  );
                },
                failure: (notes, errorMessage) => Center(
                  child: Text(errorMessage),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> buildMenuItemButtonList(BuildContext context) {
    return [
      MyMenuItemButton(
        onPressed: () async {
          if (selectedNotes.isEmpty) {
            showSelectedEmptyDialog(context, SelectedItem.note);
            return;
          }

          final selectedCategory = await showModalBottomSheet(
            context: context,
            builder: (context) {
              return ChangeCategoryBottomSheet(
                  currentCategory: widget.categoryId);
            },
          );
          if (selectedCategory != null) {
            if (context.mounted) {
              context.read<NoteBloc>().add(
                    NoteEvent.updateMultipleNotesCategory(
                      noteIds: selectedNotes,
                      category: selectedCategory,
                    ),
                  );
            }
          }
        },
        child: Text('Change Category'.tr()),
      ),
      MyMenuItemButton(
        onPressed: () {
          if (selectedNotes.isEmpty) {
            showSelectedEmptyDialog(context, SelectedItem.note);
            return;
          }
          context.read<NoteBloc>().add(
                NoteEvent.updateMultipleNotesCategory(
                  noteIds: selectedNotes,
                  category: null,
                ),
              );
        },
        child: Text('Remove from Category'.tr()),
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
            }
          }
        },
        child: Text('Delete'.tr()),
      ),
    ];
  }
}
