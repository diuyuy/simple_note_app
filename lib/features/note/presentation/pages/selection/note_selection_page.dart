import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/features/note/presentation/widgets/selection/assign_category_bottom_sheet.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/enum/selected_item.dart';
import '../../../../../core/utils/show_alert_dialog.dart';
import '../../../../../core/utils/show_selected_empty_dialog.dart';
import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../../../../core/widgets/my_menu_anchor.dart';
import '../../../domain/entities/note.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../bloc/search_notes_bloc/search_notes_bloc.dart';
import '../../bloc/wastebasket_bloc/waste_basket_bloc.dart';
import '../../widgets/selection/select_note_widget.dart';

class NoteSelectionPage extends StatefulWidget {
  const NoteSelectionPage({
    super.key,
    required this.selectedNotes,
    required this.previousPage,
  });

  final List<String> selectedNotes;
  final PreviousPage previousPage;

  @override
  State<NoteSelectionPage> createState() => _NoteSelectionPageState();
}

class _NoteSelectionPageState extends State<NoteSelectionPage> {
  late List<String> selected;

  @override
  void initState() {
    super.initState();
    selected = widget.selectedNotes;
  }

  void onTapCheckIcon(String id) {
    setState(() {
      if (selected.contains(id)) {
        selected.remove(id);
      } else {
        selected.add(id);
      }
    });
  }

  void cancelSelect() {
    setState(() {
      selected.clear();
    });
  }

  void selectAll(Iterable<String> allNotes) {
    setState(() {
      selected.addAll(allNotes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text('NoteSelectionPage.select'.tr()),
        actions: [
          TextButton(
            onPressed: () {
              final notes = switch (widget.previousPage) {
                PreviousPage.home => context.read<NoteBloc>().state.notes,
                PreviousPage.favorite => context
                    .read<NoteBloc>()
                    .state
                    .notes
                    .where((note) => note.isFavorite)
                    .toList(),
                PreviousPage.search =>
                  context.read<SearchNotesBloc>().state.notes,
                PreviousPage.trash =>
                  context.read<WasteBasketBloc>().state.wastes,
              };

              selectAll(notes.map((note) => note.id));
            },
            child: Text('NoteSelectionPage.selectAll'.tr()),
          ),
          TextButton(
            onPressed: () {
              cancelSelect();
            },
            child: Text('NoteSelectionPage.deselectAll'.tr()),
          ),
          Builder(
            builder: (context) {
              final notes = switch (widget.previousPage) {
                PreviousPage.home => context.watch<NoteBloc>().state.notes,
                PreviousPage.favorite => context
                    .watch<NoteBloc>()
                    .state
                    .notes
                    .where((note) => note.isFavorite)
                    .toList(),
                PreviousPage.search =>
                  context.watch<SearchNotesBloc>().state.notes,
                PreviousPage.trash =>
                  context.watch<WasteBasketBloc>().state.wastes,
              };

              final selectedNotes =
                  notes.where((note) => selected.contains(note.id)).toList();

              return MyMenuAnchor(
                menuChildren: buildMenuitemButtonList(context, selectedNotes),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final notes = switch (widget.previousPage) {
                PreviousPage.home => context.watch<NoteBloc>().state.notes,
                PreviousPage.favorite => context
                    .watch<NoteBloc>()
                    .state
                    .notes
                    .where((note) => note.isFavorite)
                    .toList(),
                PreviousPage.search =>
                  context.watch<SearchNotesBloc>().state.notes,
                PreviousPage.trash =>
                  context.watch<WasteBasketBloc>().state.wastes,
              };

              return ListView(
                children: notes.map((note) {
                  return SelectNoteWidget(
                    isSelected: selected.contains(note.id),
                    id: note.id,
                    title: note.title,
                    content: note.content ?? '',
                    query: widget.previousPage == PreviousPage.search
                        ? context.watch<SearchNotesBloc>().state.query
                        : '',
                    date: note.updateDate ?? note.createDate,
                    isFavorite: note.isFavorite,
                    previousPage: widget.previousPage,
                    onTapCheckIcon: onTapCheckIcon,
                  );
                }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }

  List<MenuItemButton> buildMenuitemButtonList(
    BuildContext context,
    List<Note> selectedNotes,
  ) {
    return switch (widget.previousPage) {
      PreviousPage.home => [
          MenuItemButton(
            style: MenuItemButton.styleFrom(
              minimumSize: Size(
                AppConstants.menuAnchorMinWidth.w,
                AppConstants.menuAnchorMinHeight.w,
              ),
            ),
            onPressed: () async {
              if (selectedNotes.isEmpty) {
                showSelectedEmptyDialog(context, SelectedItem.note);
                return;
              }
              final categorySet =
                  selectedNotes.map((note) => note.category).toSet();
              String? currentCategory;
              if (categorySet.length == 1) {
                currentCategory = categorySet.first;
              }

              final selectedCategory =
                  await showAssignCategoryModal(context, currentCategory);

              if (selectedCategory != null) {
                if (context.mounted) {
                  for (var selectedNote in selectedNotes) {
                    context.read<NoteBloc>().add(
                          NoteEvent.updateNote(
                            id: selectedNote.id,
                            category: selectedCategory,
                          ),
                        );
                  }
                  context.pop();
                }
              }
            },
            child: Text('NoteSelectionPage.assignCategory'.tr()),
          ),
          MenuItemButton(
            style: MenuItemButton.styleFrom(
              minimumSize: Size(
                AppConstants.menuAnchorMinWidth.w,
                AppConstants.menuAnchorMinHeight.w,
              ),
            ),
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
                  for (var deletedNote in selectedNotes) {
                    context
                        .read<NoteBloc>()
                        .add(NoteEvent.deleteNote(deletedNote: deletedNote));
                  }
                  context.pop();
                }
              }
            },
            child: Text('NoteSelectionPage.delete'.tr()),
          ),
        ],
      PreviousPage.favorite => [
          MenuItemButton(
            style: MenuItemButton.styleFrom(
              minimumSize: Size(
                AppConstants.menuAnchorMinWidth.w,
                AppConstants.menuAnchorMinHeight.w,
              ),
            ),
            onPressed: () async {
              if (selectedNotes.isEmpty) {
                showSelectedEmptyDialog(context, SelectedItem.note);
                return;
              }
              final categorySet =
                  selectedNotes.map((note) => note.category).toSet();
              String? currentCategory;
              if (categorySet.length == 1) {
                currentCategory = categorySet.first;
              }

              final selectedCategory =
                  await showAssignCategoryModal(context, currentCategory);

              if (selectedCategory != null) {
                if (context.mounted) {
                  for (var selectedNote in selectedNotes) {
                    context.read<NoteBloc>().add(
                          NoteEvent.updateNote(
                            id: selectedNote.id,
                            category: selectedCategory,
                          ),
                        );
                  }
                  context.pop();
                }
              }
            },
            child: Text('NoteSelectionPage.assignCategory'.tr()),
          ),
          MenuItemButton(
            style: MenuItemButton.styleFrom(
              minimumSize: Size(
                AppConstants.menuAnchorMinWidth.w,
                AppConstants.menuAnchorMinHeight.w,
              ),
            ),
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
                  for (var deletedNote in selectedNotes) {
                    context
                        .read<NoteBloc>()
                        .add(NoteEvent.deleteNote(deletedNote: deletedNote));
                  }
                  context.pop();
                }
              }
            },
            child: Text('NoteSelectionPage.delete'.tr()),
          ),
        ],
      PreviousPage.search => [
          MenuItemButton(
            style: MenuItemButton.styleFrom(
              minimumSize: Size(
                AppConstants.menuAnchorMinWidth.w,
                AppConstants.menuAnchorMinHeight.w,
              ),
            ),
            onPressed: () async {
              if (selectedNotes.isEmpty) {
                showSelectedEmptyDialog(context, SelectedItem.note);
                return;
              }
              final categorySet =
                  selectedNotes.map((note) => note.category).toSet();
              String? currentCategory;
              if (categorySet.length == 1) {
                currentCategory = categorySet.first;
              }

              final selectedCategory =
                  await showAssignCategoryModal(context, currentCategory);

              if (selectedCategory != null) {
                if (context.mounted) {
                  for (var selectedNote in selectedNotes) {
                    context.read<NoteBloc>().add(
                          NoteEvent.updateNote(
                            id: selectedNote.id,
                            category: selectedCategory,
                          ),
                        );
                  }
                  context.pop();
                }
              }
            },
            child: Text('NoteSelectionPage.assignCategory'.tr()),
          ),
          MenuItemButton(
            style: MenuItemButton.styleFrom(
              minimumSize: Size(
                AppConstants.menuAnchorMinWidth.w,
                AppConstants.menuAnchorMinHeight.w,
              ),
            ),
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
                  for (var deletedNote in selectedNotes) {
                    context.read<SearchNotesBloc>().add(
                        SearchNotesBlocEvent.deleteNote(
                            deletedNote: deletedNote));

                    context
                        .read<NoteBloc>()
                        .add(NoteEvent.deleteNote(deletedNote: deletedNote));
                  }
                  context.pop();
                }
              }
            },
            child: Text('NoteSelectionPage.delete'.tr()),
          ),
        ],
      PreviousPage.trash => [
          MenuItemButton(
            style: MenuItemButton.styleFrom(
              minimumSize: Size(
                AppConstants.menuAnchorMinWidth.w,
                AppConstants.menuAnchorMinHeight.w,
              ),
            ),
            onPressed: () {
              if (selectedNotes.isEmpty) {
                showSelectedEmptyDialog(context, SelectedItem.note);
                return;
              }
              for (var selectedNote in selectedNotes) {
                context.read<WasteBasketBloc>().add(
                    WasteBasketEvent.restoreNote(restoredNote: selectedNote));
                context
                    .read<NoteBloc>()
                    .add(NoteEvent.restoreNote(restoredNote: selectedNote));
              }

              context.pop();
            },
            child: Text('NoteSelectionPage.restore'.tr()),
          ),
          MenuItemButton(
            onPressed: () async {
              if (selectedNotes.isEmpty) {
                showSelectedEmptyDialog(context, SelectedItem.note);
                return;
              }
              final isConfirm = await showAlertDialog(
                    context: context,
                    title: 'NoteSelectionPage.permanentlyDelete'.tr(),
                    content: 'NoteSelectionPage.permanentlyDeleteDialogContent'
                        .tr(args: [selectedNotes.length.toString()]),
                  ) ??
                  false;
              if (isConfirm) {
                if (context.mounted) {
                  for (var selectedNote in selectedNotes) {
                    context.read<WasteBasketBloc>().add(
                          WasteBasketEvent.deletePermanently(
                            id: selectedNote.id,
                          ),
                        );

                    context.pop();
                  }
                }
              }
            },
            child: Text('NoteSelectionPage.permanentlyDelete'.tr()),
          ),
        ],
    };
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
