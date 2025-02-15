import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/enum/previous_page.dart';
import '../../../../core/router/note_selection_args.dart';
import '../../../../core/router/router_path.dart';
import '../../../../core/widgets/my_menu_anchor.dart';
import '../../../../core/widgets/note_drawer.dart';
import '../bloc/note_bloc/note_bloc.dart';
import '../widgets/notes_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NoteDrawer(),
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
          MyMenuAnchor(menuChildren: buildMenuitemButtonList(context)),
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

  List<MenuItemButton> buildMenuitemButtonList(BuildContext context) {
    final notes = context.watch<NoteBloc>().state.notes;

    return [
      MenuItemButton(
        onPressed: () {
          context.push(
            RouterPath.noteSelectionPage,
            extra: NoteSelectionArgs(
              selectedNotes: <String>[],
              previousPage: PreviousPage.note,
            ),
          );
        },
        child: Text('HomePage.select'.tr()),
      ),
      MenuItemButton(
        onPressed: () {
          context.push(
            RouterPath.noteSelectionPage,
            extra: NoteSelectionArgs(
              selectedNotes: notes.map((note) => note.id).toList(),
              previousPage: PreviousPage.note,
            ),
          );
        },
        child: Text('HomePage.selectAll'.tr()),
      ),
    ];
  }
}
