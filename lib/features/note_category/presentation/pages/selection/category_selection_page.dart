import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/enum/selected_item.dart';
import '../../../../../core/utils/show_alert_dialog.dart';
import '../../../../../core/utils/show_selected_empty_dialog.dart';
import '../../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../../bloc/note_category_bloc.dart';
import '../../widgets/selection/select_category_widget.dart';

class CategorySelectionPage extends StatefulWidget {
  const CategorySelectionPage({super.key, required this.selectedCategories});

  final List<String> selectedCategories;

  @override
  State<CategorySelectionPage> createState() => _CategorySelectionPageState();
}

class _CategorySelectionPageState extends State<CategorySelectionPage> {
  late List<String> selectedCategories;

  @override
  void initState() {
    super.initState();
    selectedCategories = widget.selectedCategories;
  }

  void cancelSelect() {
    setState(() {
      selectedCategories.clear();
    });
  }

  void selectAll(Iterable<String> allCategories) {
    setState(() {
      selectedCategories.addAll(allCategories);
    });
  }

  void tapCategoryCard(String id) {
    setState(() {
      if (selectedCategories.contains(id)) {
        selectedCategories.remove(id);
      } else {
        selectedCategories.add(id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('CategorySelectionPage.select'.tr()),
        actions: [
          TextButton(
            onPressed: () {
              final categories =
                  context.read<NoteCategoryBloc>().state.categories;
              final categoryIds = categories.map((category) => category.id);

              selectAll(categoryIds);
            },
            child: Text(
              'CategorySelectionPage.selectAll'.tr(),
            ),
          ),
          TextButton(
            onPressed: cancelSelect,
            child: Text(
              'CategorySelectionPage.deselectAll'.tr(),
            ),
          ),
          IconButton(
            onPressed: () async {
              if (selectedCategories.isEmpty) {
                showSelectedEmptyDialog(context, SelectedItem.category);
                return;
              }
              final confirm = await showAlertDialog(
                    context: context,
                    title: 'CategorySelectionPage.delete'.tr(),
                    content: 'CategorySelectionPage.deleteDialogContent'
                        .tr(args: [selectedCategories.length.toString()]),
                  ) ??
                  false;

              if (confirm) {
                if (context.mounted) {
                  context.read<NoteCategoryBloc>().add(
                        NoteCategoryEvent.categoriesDeleted(
                            deletedNoteCategoryIds: selectedCategories),
                      );

                  context.pop();
                }
              }
            },
            icon: Icon(
              Icons.delete_forever,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final categories =
                  context.watch<NoteCategoryBloc>().state.categories;
              final notes = context.watch<NoteBloc>().state.notes;

              return ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final noteCount = notes
                      .where((note) => note.category == category.categoryName)
                      .length;

                  return SelectCategoryWidget(
                    id: category.id,
                    categoryName: category.categoryName,
                    categoryIconCodePoint: category.iconCode,
                    noteCount: noteCount,
                    color: Color.from(
                      alpha: category.categoryColorA,
                      red: category.categoryColorR,
                      green: category.categoryColorG,
                      blue: category.categoryColorB,
                    ),
                    isSelected: selectedCategories.contains(category.id),
                    onTap: tapCategoryCard,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
