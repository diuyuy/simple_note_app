import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/enum/selected_item.dart';
import '../../../../../core/utils/assing_category/show_assing_category_modal.dart';
import '../../../../../core/utils/dialog_and_snackbar/show_alert_dialog.dart';
import '../../../../../core/utils/dialog_and_snackbar/show_selected_empty_dialog.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_item_button.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../widgets/selection/select_note_widget.dart';

class FavoriteSelectionPage extends StatefulWidget {
  const FavoriteSelectionPage({super.key, required this.selectedFavorites});

  final List<String> selectedFavorites;

  @override
  State<FavoriteSelectionPage> createState() => _FavoriteSelectionPageState();
}

class _FavoriteSelectionPageState extends State<FavoriteSelectionPage> {
  late final List<String> selectedFavorites;

  @override
  void initState() {
    super.initState();
    selectedFavorites = widget.selectedFavorites;
  }

  void onTapSelectNoteWidget(String id) {
    setState(() {
      if (selectedFavorites.contains(id)) {
        selectedFavorites.remove(id);
      } else {
        selectedFavorites.add(id);
      }
    });
  }

  void selectAll(Iterable<String> allFavorites) {
    setState(() {
      selectedFavorites.clear();
      selectedFavorites.addAll(allFavorites);
    });
  }

  void deselectAll() {
    setState(() {
      selectedFavorites.clear();
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
            final allFavorites =
                notes.where((note) => note.isFavorite).map((note) => note.id);

            return TextButton(
              onPressed: () {
                selectAll(allFavorites);
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
              final noteState = context.watch<NoteBloc>().state;

              return noteState.when(
                initial: (notes) => const SizedBox.shrink(),
                success: (notes) {
                  final favorites =
                      notes.where((note) => note.isFavorite).toList();

                  return ListView(
                    children: favorites.map((favorite) {
                      return SelectNoteWidget(
                        isSelected: selectedFavorites.contains(favorite.id),
                        id: favorite.id,
                        title: favorite.title,
                        date: favorite.updateDate ?? favorite.createDate,
                        isFavorite: favorite.isFavorite,
                        previousPage: PreviousPage.favorite,
                        onTap: onTapSelectNoteWidget,
                      );
                    }).toList(),
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
    final notes = context.watch<NoteBloc>().state.notes;

    final selected = notes.where((note) => selectedFavorites.contains(note.id));

    return [
      MyMenuItemButton(
        onPressed: () async {
          if (selectedFavorites.isEmpty) {
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
              final noteIds = selected.map((note) => note.id).toList();
              context.read<NoteBloc>().add(
                    NoteEvent.updateMultipleNotesCategory(
                      noteIds: noteIds,
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
          if (selectedFavorites.isEmpty) {
            showSelectedEmptyDialog(context, SelectedItem.note);
            return;
          }

          final isConfirm = await showAlertDialog(
                context: context,
                title: 'NoteSelectionPage.delete'.tr(),
                content: 'NoteSelectionPage.deleteDialogContent'
                    .tr(args: [selectedFavorites.length.toString()]),
              ) ??
              false;

          if (isConfirm) {
            if (context.mounted) {
              context.read<NoteBloc>().add(
                    NoteEvent.deleteMultipleNotes(
                      deletedNotes: selectedFavorites,
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
}
