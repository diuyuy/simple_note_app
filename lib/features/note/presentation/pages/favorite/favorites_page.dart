import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/router/note_selection_args.dart';
import '../../../../../core/router/router_path.dart';
import '../../../../../core/utils/show_no_note_to_select_dialog.dart';
import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../widgets/empty_note_text_widget.dart';
import '../../widgets/note_card_widget.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text('FavoritesPage.favorites'.tr()),
        centerTitle: true,
        actions: [
          MyMenuAnchor(
            menuChildren: buildMenuItemButtonList(context),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: BlocBuilder<NoteBloc, NoteState>(
            builder: (context, state) {
              final favortes =
                  state.notes.where((note) => note.isFavorite).toList();

              return favortes.isNotEmpty
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        final note = favortes[index];

                        return GestureDetector(
                          onLongPress: () {
                            context.push(
                              RouterPath.favoritesSelectionPage,
                              extra: SelectionPageArgs(
                                selectedNotes: [note.id],
                              ),
                            );
                          },
                          onTap: () {
                            context.push(
                              '/${RouterPath.readNotePage}',
                              extra: favortes[index].id,
                            );
                          },
                          child: NoteCardWidget(
                            title: favortes[index].title,
                            date: favortes[index].updateDate ??
                                favortes[index].createDate,
                            isFavorite: favortes[index].isFavorite,
                            onTapTrailing: () {
                              context.read<NoteBloc>().add(
                                    NoteEvent.updateNote(
                                      id: favortes[index].id,
                                      isFavorite: !favortes[index].isFavorite,
                                    ),
                                  );
                            },
                          ),
                        );
                      },
                      itemCount: favortes.length,
                    )
                  : EmptyNoteTextWidget(
                      content: 'FavoritesPage.addFavoriteNote'.tr(),
                    );
            },
          ),
        ),
      ),
    );
  }

  List<MenuItemButton> buildMenuItemButtonList(BuildContext context) {
    final notes = context.watch<NoteBloc>().state.notes;

    final favoritesNotes = notes.where((note) => note.isFavorite).toList();

    return [
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          if (favoritesNotes.isEmpty) {
            showNoNoteToSelectDialog(context);
            return;
          }

          context.push(
            RouterPath.favoritesSelectionPage,
            extra: SelectionPageArgs(
              selectedNotes: <String>[],
            ),
          );
        },
        child: Text('FavoritesPage.select'.tr()),
      ),
      MenuItemButton(
        onPressed: () {
          if (favoritesNotes.isEmpty) {
            showNoNoteToSelectDialog(context);
            return;
          }

          context.push(
            RouterPath.favoritesSelectionPage,
            extra: SelectionPageArgs(
              selectedNotes:
                  favoritesNotes.map((favorite) => favorite.id).toList(),
            ),
          );
        },
        child: Text('FavoritesPage.selectAll'.tr()),
      ),
    ];
  }
}
