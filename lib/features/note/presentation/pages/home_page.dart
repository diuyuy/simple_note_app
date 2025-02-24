import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/router/note_selection_args.dart';
import '../../../../core/router/router_path.dart';
import '../../../../core/utils/show_no_note_to_select_dialog.dart';
import '../../../../core/widgets/drawer/note_drawer.dart';
import '../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../bloc/note_bloc/note_bloc.dart';
import '../widgets/notes_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NoteDrawer(),
      appBar: AppBar(
        title: Text('HomePage.note'.tr()),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.go('/${RouterPath.searchNotePage}');
            },
            icon: Icon(Icons.search),
          ),
          MyMenuAnchor(menuChildren: buildMenuItemButtonList(context)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: NotesListWidget(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/${RouterPath.createNotePage}'),
        child: Icon(Icons.add),
      ),
    );
  }

  List<MenuItemButton> buildMenuItemButtonList(BuildContext context) {
    final notes = context.watch<NoteBloc>().state.notes;

    return [
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          if (notes.isEmpty) {
            showNoNoteToSelectDialog(context);
            return;
          }
          context.push(
            RouterPath.noteSelectionPage,
            extra: SelectionPageArgs(
              selectedNotes: <String>[],
            ),
          );
        },
        child: Text('HomePage.select'.tr()),
      ),
      MenuItemButton(
        onPressed: () {
          if (notes.isEmpty) {
            showNoNoteToSelectDialog(context);
            return;
          }
          context.push(
            RouterPath.noteSelectionPage,
            extra: SelectionPageArgs(
              selectedNotes: notes.map((note) => note.id).toList(),
            ),
          );
        },
        child: Text('HomePage.selectAll'.tr()),
      ),
      MenuItemButton(
        onPressed: () {
          if (notes.isEmpty) {
            showNoNoteToSelectDialog(context);
            return;
          }
          context.go(
            '/${RouterPath.reorderNotePage}',
            extra: notes.map((note) => note.id).toList(),
          );
        },
        child: Text('HomePage.reorderNotes'.tr()),
      ),
    ];
  }
}
