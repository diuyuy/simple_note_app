import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/core/router/router_path.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../../../../note/presentation/widgets/note_card_widget.dart';

class CategoryNotesPage extends StatelessWidget {
  const CategoryNotesPage({
    super.key,
    required this.id,
    required this.categoryName,
  });

  final String id;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text(
          categoryName,
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
        actions: [
          MyMenuAnchor(menuChildren: buildMenuItemButtonList(context)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final notes = context
                  .select((NoteBloc bloc) => bloc.state.notes)
                  .where((note) => note.category == id)
                  .toList();

              return ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];

                  return NoteCardWidget(
                    title: note.title,
                    date: note.updateDate ?? note.createDate,
                    isFavorite: note.isFavorite,
                    onTapTrailing: () {
                      context.read<NoteBloc>().add(
                            NoteEvent.updateNote(
                              id: note.id,
                              isFavorite: !note.isFavorite,
                            ),
                          );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  List<MenuItemButton> buildMenuItemButtonList(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;

    return [
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          context.go(
            '$currentPath/${RouterPath.addNoteTocategoryPage}',
            extra: {
              'id': id,
              'categoryName': categoryName,
            },
          );
        },
        child: Text('CategoryNotesPage.addNotes'.tr()),
      ),
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () async {},
        child: Text('CategoryNotesPage.delete'.tr()),
      ),
    ];
  }
}
