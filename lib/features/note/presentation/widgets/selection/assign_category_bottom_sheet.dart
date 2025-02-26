import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/core/router/router_path.dart';

import '../../../../../core/color/app_colors.dart';
import '../../../../../core/utils/get_category_color.dart';
import '../../../../../core/widgets/bottom_action_button.dart';
import '../../../../../core/widgets/code_point_icon.dart';
import '../../../../note_category/presentation/bloc/note_category_bloc.dart';

class AssignCategoryBottomSheet extends StatefulWidget {
  const AssignCategoryBottomSheet({super.key, this.currentCategory});

  final String? currentCategory;

  @override
  State<AssignCategoryBottomSheet> createState() =>
      _AssignCategoryBottomSheetState();
}

class _AssignCategoryBottomSheetState extends State<AssignCategoryBottomSheet> {
  String? selectedId;

  @override
  void initState() {
    super.initState();
    if (widget.currentCategory != null) {
      selectedId = widget.currentCategory;
    }
  }

  void tapCheckBox(String id) {
    setState(() {
      selectedId = id;
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
                            //onTap: () => tapCheckBox(category.id),
                            child: ListTile(
                              onTap: () => tapCheckBox(category.id),
                              leading: CodePointIcon(
                                codePoint: category.iconCode,
                                color: getCategoryColor(category),
                              ),
                              title: Text(category.categoryName),
                              trailing: Icon(
                                category.id == selectedId
                                    ? Icons.check_circle
                                    : Icons.circle_outlined,
                                color: category.id == selectedId
                                    ? Theme.of(context).colorScheme.primary
                                    : AppColors.midDarkGrey,
                              ),
                            ),
                          ),
                          //const Divider(),
                        ],
                      ),
                    ),
                    Gap(8),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 8.0),
                      child: AspectRatio(
                        aspectRatio: 8 / 1,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                          onPressed: () {
                            context.push(RouterPath.createNoteCategoryPage);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.add),
                              Gap(8),
                              Text(
                                "Create a new category".tr(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),
            BottomActionButton(
              enabled: selectedId != null,
              text: 'AssignCategoryBottomSheet.save'.tr(),
              onTap: () => Navigator.pop(context, selectedId),
            ),
          ],
        ),
      ),
    );
  }
}
