import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../color/app_colors.dart';
import '../constants/app_constants.dart';
import '../utils/color_container_widget.dart';

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
            top: 12.0, bottom: 12.0, left: 12.0, right: 8.0),
        child: Row(
          children: [
            ColorContainerWidget(
              color: primaryColor,
              width: 36,
              alpha: 80,
              child: Icon(
                Icons.note_rounded,
                color: primaryColor,
              ),
            ),
            Gap(12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title.isNotEmpty ? title : AppConstants.untitled.tr(),
                  style:
                      TextStyle(fontSize: AppConstants.noteCardTitleFontSize),
                ),
                Text(
                  'NoteCardWidget.updateDate'.tr(args: [date]),
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: AppConstants.noteCardDateFontSize,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: onTapTrailing,
              icon: Icon(
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
