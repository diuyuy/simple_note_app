import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../core/color/app_colors.dart';
import '../../../../../core/utils/get_category_color.dart';
import '../../../../../core/widgets/bottom_action_button.dart';
import '../../../../../core/widgets/code_point_icon.dart';
import '../../bloc/note_category_bloc.dart';

class ChangeCategoryBottomSheet extends StatefulWidget {
  const ChangeCategoryBottomSheet({super.key, required this.currentCategory});

  final String currentCategory;

  @override
  State<ChangeCategoryBottomSheet> createState() =>
      _ChangeCategoryBottomSheetState();
}

class _ChangeCategoryBottomSheetState extends State<ChangeCategoryBottomSheet> {
  late String selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.currentCategory;
  }

  void tapCheckBox(String categoryId) {
    setState(() {
      selectedCategory = categoryId;
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<NoteCategoryBloc>().state.categories;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Gap(8),
                    ...categories.map(
                      (category) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () => tapCheckBox(category.id),
                            child: ListTile(
                              leading: CodePointIcon(
                                codePoint: category.iconCode,
                                color: getCategoryColor(category),
                              ),
                              title: Text(category.categoryName),
                              trailing: Icon(
                                category.id == selectedCategory
                                    ? Icons.check_circle
                                    : Icons.circle_outlined,
                                color: category.id == selectedCategory
                                    ? Theme.of(context).colorScheme.primary
                                    : AppColors.midDarkGrey,
                              ),
                            ),
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomActionButton(
              enabled: selectedCategory != widget.currentCategory,
              text: 'AssignCategoryBottomSheet.change'.tr(),
              onTap: () => Navigator.pop(context, selectedCategory),
            ),
          ],
        ),
      ),
    );
  }
}
