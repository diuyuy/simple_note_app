import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/core/constants/app_constants.dart';

import '../../../../core/router/router_path.dart';
import '../../../../core/widgets/my_menu_anchor.dart';
import '../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../bloc/note_category_bloc.dart';
import '../widgets/note_category_card_widget.dart';

class NoteCategoryPage extends StatelessWidget {
  const NoteCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;

    return Scaffold(
      //drawer: const NoteDrawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text('NoteCategoryPage.category'.tr()),
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
              final noteCategoryStatus =
                  context.watch<NoteCategoryBloc>().state;
              final notes = context.watch<NoteBloc>().state.notes;

              return noteCategoryStatus.when(
                initial: (categories) => SizedBox.shrink(),
                loadSuccess: (categories) {
                  return ReorderableListView.builder(
                    proxyDecorator: (child, index, animation) {
                      return Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.transparent,
                        child: child,
                      );
                    },
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final noteCategory = categories[index];
                      final noteCount = notes
                          .where(
                            (note) =>
                                note.category == noteCategory.categoryName,
                          )
                          .length;

                      return GestureDetector(
                        key: Key(noteCategory.id),
                        onLongPress: () {
                          context.go(
                            '$currentPath/${RouterPath.noteCategorySelectionPage}',
                            extra: [noteCategory.id],
                          );
                        },
                        child: NoteCategoryCardWidget(
                          categoryName: noteCategory.categoryName,
                          categoryIconCodePoint: noteCategory.iconCode,
                          noteCount: noteCount,
                          index: index,
                          color: Color.from(
                            alpha: noteCategory.categoryColorA,
                            red: noteCategory.categoryColorR,
                            green: noteCategory.categoryColorG,
                            blue: noteCategory.categoryColorB,
                          ),
                        ),
                      );
                    },
                    onReorder: (oldIndex, newIndex) {
                      context.read<NoteCategoryBloc>().add(
                            NoteCategoryEvent.categoryReordered(
                              oldIndex: oldIndex,
                              newIndex: newIndex,
                            ),
                          );
                    },
                  );
                },
                failure: (categories, errorMessage) => Center(
                  child: Text(errorMessage),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('$currentPath/${RouterPath.createNoteCategoryPage}');
        },
        child: Icon(
          Icons.create_new_folder_outlined,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  List<MenuItemButton> buildMenuItemButtonList(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;
    final categories = context.watch<NoteCategoryBloc>().state.categories;
    final allCategoryIds = categories.map((category) => category.id).toList();

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
            '$currentPath/${RouterPath.noteCategorySelectionPage}',
            extra: <String>[],
          );
        },
        child: Text('NoteCategoryPage.select'.tr()),
      ),
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          context.go(
            '$currentPath/${RouterPath.noteCategorySelectionPage}',
            extra: allCategoryIds,
          );
        },
        child: Text('NoteCategoryPage.selectAll'.tr()),
      ),
    ];
  }
}
