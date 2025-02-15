import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/router_path.dart';
import '../../../../core/widgets/my_menu_anchor.dart';
import '../../../../core/widgets/note_drawer.dart';
import '../widgets/notes_list_widget.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NoteDrawer(),
      appBar: AppBar(
        title: Text('NotePage.note'.tr()),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.go('/${RouterPath.searchNotePage}');
            },
            icon: Icon(Icons.search),
          ),
          MyMenuAnchor(menuChildren: <MenuItemButton>[]),
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
}
