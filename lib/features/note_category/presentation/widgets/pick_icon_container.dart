import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/img/icon/category_icons.dart';
import 'code_point_icon.dart';

class PickIconContainer extends StatelessWidget {
  const PickIconContainer({
    super.key,
    this.selectedCode,
    required this.selectIcon,
  });

  final int? selectedCode;
  final void Function(int codePoint) selectIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
      child: Column(
        children: [
          buildIconsRow(context: context, start: 0, end: 8),
          Gap(8),
          buildIconsRow(
            context: context,
            start: 8,
            end: CategoryIcons.categoryIcons.length,
          ),
        ],
      ),
    );
  }

  Widget buildIconsRow({
    required BuildContext context,
    required int start,
    required int end,
  }) {
    return SizedBox(
      height: 28.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: CategoryIcons.categoryIcons
            .sublist(start, end)
            .map(
              (codePoint) => GestureDetector(
                onTap: () => selectIcon(codePoint),
                child: CodePointIcon(
                  codePoint: codePoint,
                  size: selectedCode == codePoint ? 28.w : 24.w,
                  color: selectedCode == codePoint
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
