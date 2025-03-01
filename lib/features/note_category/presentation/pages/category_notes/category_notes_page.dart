import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/core/utils/dialog_and_snackbar/show_no_note_to_select_dialog.dart';
import 'package:simple_note_app/core/widgets/empty_note_text_widget.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/enum/router_params_key.dart';
import '../../../../../core/router/router_path.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_item_button.dart';
import '../../../../../core/widgets/tirigger_haptick_feedback.dart';
import '../../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../../../../note/presentation/widgets/note_card_widget.dart';

class CategoryNotesPage extends StatelessWidget {
  const CategoryNotesPage({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  final String categoryId;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;

    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
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
                  .where((note) => note.category == categoryId)
                  .toList();

              return notes.isNotEmpty
                  ? ListView.builder(
                      itemCount: notes.length,
                      itemBuilder: (context, index) {
                        final note = notes[index];

                        return GestureDetector(
                          onLongPress: () async {
                            await triggerHaptickFeedBack();
                            if (context.mounted) {
                              context.push(
                                '$currentPath/${RouterPath.categoryNotesSelectionPage}',
                                extra: <RouterParamsKey, List<String>>{
                                  RouterParamsKey.categoryId: [categoryId],
                                  RouterParamsKey.selectedNotes: [note.id],
                                },
                              );
                            }
                          },
                          onTap: () {
                            context.push(RouterPath.readNotePage,
                                extra: note.id);
                          },
                          child: NoteCardWidget(
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
                          ),
                        );
                      },
                    )
                  : EmptyNoteTextWidget(
                      content: 'Add the notes you want!'.tr());
            },
          ),
        ),
      ),
    );
  }

  List<Widget> buildMenuItemButtonList(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;
    final notes = context.watch<NoteBloc>().state.notes;

    final categoryNotes = notes
        .where((note) => note.category == categoryId)
        .map((note) => note.id)
        .toList();

    return [
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          context.push(
            '$currentPath/${RouterPath.addNoteTocategoryPage}',
            extra: {
              'id': categoryId,
              'categoryName': categoryName,
            },
          );
        },
        child: Text('CategoryNotesPage.addNotes'.tr()),
      ),
      MyMenuItemButton(
        onPressed: () {
          if (categoryNotes.isEmpty) {
            showNoItemToSelectDialog(context);
            return;
          }
          context.push(
            '$currentPath/${RouterPath.categoryNotesSelectionPage}',
            extra: <RouterParamsKey, List<String>>{
              RouterParamsKey.categoryId: [categoryId],
              RouterParamsKey.selectedNotes: [],
            },
          );
        },
        child: Text('Select'.tr()),
      ),
      MyMenuItemButton(
        onPressed: () {
          if (categoryNotes.isEmpty) {
            showNoItemToSelectDialog(context);
            return;
          }
          context.push(
            '$currentPath/${RouterPath.categoryNotesSelectionPage}',
            extra: <RouterParamsKey, List<String>>{
              RouterParamsKey.categoryId: [categoryId],
              RouterParamsKey.selectedNotes: categoryNotes,
            },
          );
        },
        child: Text('Select All'.tr()),
      )
    ];
  }
}
