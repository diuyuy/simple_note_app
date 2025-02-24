import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/color/app_colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/color_container_widget.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({
    super.key,
    required this.title,
    required this.date,
    required this.isFavorite,
    required this.onTapTrailing,
  });

  final String title;
  final String date;
  final bool isFavorite;
  final void Function() onTapTrailing;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.transparent),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 12.0, bottom: 12.0, left: 12.0, right: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorContainerWidget(
              color: primaryColor,
              width: 36,
              alpha: 80,
              child: Icon(
                Icons.sticky_note_2,
                color: primaryColor,
              ),
            ),
            Gap(12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title.isNotEmpty ? title : AppConstants.untitled.tr(),
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'NoteCardWidget.updateDate'.tr(args: [date]),
                    style: TextStyle(
                      color: AppColors.midDarkGrey,
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium?.fontSize,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Gap(8.w),
            GestureDetector(
              onTap: onTapTrailing,
              child: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
