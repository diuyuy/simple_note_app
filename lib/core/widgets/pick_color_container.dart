import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../color/app_colors.dart';

class PickColorContainer extends StatelessWidget {
  const PickColorContainer({
    super.key,
    this.selectedColor,
    this.isPickSeed = false,
    required this.selectColor,
  });

  final Color? selectedColor;
  final bool isPickSeed;
  final void Function(Color color) selectColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Theme.of(context).colorScheme.outline),
      ),
      child: Column(
        children: [
          isPickSeed ? buildSeedColorRow(0, 7) : buildColorsRow(0, 7),
          if (isPickSeed) Gap(8),
          if (isPickSeed) buildSeedColorRow(8, AppColors.seedColors.length),
        ],
      ),
    );
  }

  Widget buildColorsRow(int start, int end) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: AppColors.colors300
          .sublist(start, end)
          .map((color) => GestureDetector(
                onTap: () => selectColor(color),
                child: Icon(
                  color == selectedColor ? Icons.check_circle : Icons.circle,
                  color: color,
                  size: 32.w,
                ),
              ))
          .toList(),
    );
  }

  Widget buildSeedColorRow(int start, int end) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: AppColors.seedColors
          .map(
            (colorHex) => GestureDetector(
              onTap: () => selectColor(Color(colorHex)),
              child: Icon(
                Color(colorHex) == selectedColor
                    ? Icons.check_circle
                    : Icons.circle,
                color: Color(colorHex),
                size: 36.w,
              ),
            ),
          )
          .toList(),
    );
  }
}
