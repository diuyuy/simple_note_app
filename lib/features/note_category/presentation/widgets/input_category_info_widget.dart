import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/color/app_colors.dart';
import '../bloc/note_category_bloc.dart';
import 'pick_color_container.dart';
import 'pick_icon_container.dart';
import 'save_button.dart';

class InputCategoryInfoWidget extends StatefulWidget {
  const InputCategoryInfoWidget({super.key});

  @override
  State<InputCategoryInfoWidget> createState() =>
      _InputCategoryInfoWidgetState();
}

class _InputCategoryInfoWidgetState extends State<InputCategoryInfoWidget> {
  final TextEditingController _categoryNameController = TextEditingController();
  int? iconCode;
  late Color categoryColor;

  @override
  void initState() {
    super.initState();
    categoryColor = Colors.blue;
  }

  @override
  void dispose() {
    _categoryNameController.dispose();
    super.dispose();
  }

  void selectIcon(int codePoint) {
    setState(() {
      iconCode = codePoint;
    });
  }

  void selectColor(Color color) {
    setState(() {
      categoryColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(12),
            Text(
              'InputCategoryInfoWidget.categoryName'.tr(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(8),
            TextField(
              controller: _categoryNameController,
              cursorColor: AppColors.midDarkGrey,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Gap(20),
            Text(
              'InputCategoryInfoWidget.categoryIcon'.tr(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(8),
            PickIconContainer(
              selectedCode: iconCode,
              color: categoryColor,
              selectIcon: selectIcon,
            ),
            Gap(20),
            Text(
              'InputCategoryInfoWidget.iconColor'.tr(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(8),
            PickColorContainer(
              selectedColor: categoryColor,
              selectColor: selectColor,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: SaveButton(
            enabled:
                _categoryNameController.text.isNotEmpty && iconCode != null,
            onTap: () {
              context.read<NoteCategoryBloc>().add(
                    NoteCategoryEvent.categoryCreated(
                      categoryName: _categoryNameController.text,
                      iconCode: iconCode!,
                      categoryColorA: categoryColor.a,
                      categoryColorR: categoryColor.r,
                      categoryColorG: categoryColor.g,
                      categoryColorB: categoryColor.b,
                    ),
                  );
            },
          ),
        ),
      ],
    );
  }
}
