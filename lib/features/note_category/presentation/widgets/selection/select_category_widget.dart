import 'package:flutter/material.dart';

import '../../../../../core/color/app_colors.dart';
import '../note_category_card_widget.dart';

class SelectCategoryWidget extends StatelessWidget {
  const SelectCategoryWidget({
    super.key,
    required this.id,
    required this.categoryName,
    required this.categoryIconCodePoint,
    required this.noteCount,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  final String id;
  final String categoryName;
  final int categoryIconCodePoint;
  final int noteCount;
  final Color color;
  final bool isSelected;
  final void Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onTap(id),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 12,
            child: NoteCategoryCardWidget(
              id: id,
              categoryName: categoryName,
              categoryIconCodePoint: categoryIconCodePoint,
              noteCount: noteCount,
              index: 0,
              color: color,
            ),
          ),
          Flexible(
            flex: 1,
            child: Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : AppColors.midDarkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
