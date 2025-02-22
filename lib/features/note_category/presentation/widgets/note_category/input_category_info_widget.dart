import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/color/app_colors.dart';
import '../../../../../core/widgets/bottom_action_button.dart';
import '../../../../../core/widgets/pick_color_container.dart';
import '../../bloc/note_category_bloc.dart';
import '../pick_icon_container.dart';

class InputCategoryInfoWidget extends StatefulWidget {
  const InputCategoryInfoWidget({super.key, this.id});

  final String? id;

  @override
  State<InputCategoryInfoWidget> createState() =>
      _InputCategoryInfoWidgetState();
}

class _InputCategoryInfoWidgetState extends State<InputCategoryInfoWidget> {
  late final TextEditingController _categoryNameController;
  final BehaviorSubject<String> _categoryNameSubect = BehaviorSubject<String>();
  int? iconCode;
  late Color categoryColor;

  @override
  void initState() {
    super.initState();
    if (widget.id != null) {
      final selectedCategory = context
          .read<NoteCategoryBloc>()
          .state
          .categories
          .firstWhere((category) => category.id == widget.id);

      _categoryNameController =
          TextEditingController(text: selectedCategory.categoryName);
      iconCode = selectedCategory.iconCode;
      categoryColor = Color.from(
        alpha: selectedCategory.categoryColorA,
        red: selectedCategory.categoryColorR,
        green: selectedCategory.categoryColorG,
        blue: selectedCategory.categoryColorB,
      );
    } else {
      _categoryNameController = TextEditingController();
      categoryColor = AppColors.colors300[0];
    }

    _categoryNameSubect
        .debounceTime(const Duration(milliseconds: 100))
        .switchMap(Stream.value)
        .listen(onTextFieldChanged);
  }

  @override
  void dispose() {
    _categoryNameController.dispose();
    _categoryNameSubect.close();
    super.dispose();
  }

  void onTextFieldChanged(String value) {
    setState(() {});
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
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
                onChanged: (value) {
                  _categoryNameSubect.add(value);
                },
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
        ),
        BottomActionButton(
          enabled: _categoryNameController.text.isNotEmpty && iconCode != null,
          text: 'InputCategoryInfoWidget.save'.tr(),
          onTap: () {
            if (widget.id == null) {
              if (_categoryNameController.text.isEmpty || iconCode == null) {
                return;
              }
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
            } else {
              context.read<NoteCategoryBloc>().add(
                    NoteCategoryEvent.categoryUpdated(
                      id: widget.id!,
                      categoryName: _categoryNameController.text,
                      iconCode: iconCode,
                      categoryColorA: categoryColor.a,
                      categoryColorR: categoryColor.r,
                      categoryColorG: categoryColor.g,
                      categoryColorB: categoryColor.b,
                    ),
                  );
            }
          },
        ),
      ],
    );
  }
}
