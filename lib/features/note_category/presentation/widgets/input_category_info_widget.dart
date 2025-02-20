import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'pick_icon_container.dart';

class InputCategoryInfoWidget extends StatefulWidget {
  const InputCategoryInfoWidget({super.key});

  @override
  State<InputCategoryInfoWidget> createState() =>
      _InputCategoryInfoWidgetState();
}

class _InputCategoryInfoWidgetState extends State<InputCategoryInfoWidget> {
  final TextEditingController _categoryNameController = TextEditingController();
  int? iconCode;
  int? categoryColor;

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

  void selectColor(int color) {
    setState(() {
      categoryColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CreateNoteCategoryPage.categoryName'.tr(),
          ),
          Gap(8),
          TextField(
            controller: _categoryNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Gap(12),
          Text('CreateNoteCategoryPage.categoryIcon'.tr()),
          Gap(8),
          PickIconContainer(
            selectedCode: iconCode,
            selectIcon: selectIcon,
          ),
          Gap(12),
          Text('CreateNoteCategoryPage.iconColor'.tr())
        ],
      ),
    );
  }
}
