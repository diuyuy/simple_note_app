import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Text(
                  'NoteCardWidget.updateDate'.tr(args: [date]),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey[700]),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: onTapTrailing,
              child: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: primaryColor,
              ),
            )
          ],
        ),
      ),
      // child: ListTile(
      //   leading: ColorContainerWidget(
      //     color: primaryColor,
      //     alpha: 80,
      //     width: 36,
      //     child: Icon(
      //       Icons.note_rounded,
      //       color: primaryColor,
      //     ),
      //   ),
      //   title: Text(
      //     title,
      //     overflow: TextOverflow.ellipsis,
      //   ),
      //   subtitle: Text(
      //     'NoteCardWidget.updateDate'.tr(
      //       args: [date],
      //     ),
      //   ),
      //   trailing: GestureDetector(
      //     onTap: onTapTrailing,
      //     child: Icon(
      //       isFavorite ? Icons.star : Icons.star_border,
      //       color: primaryColor,
      //     ),
      //   ),
      // ),
    );
  }
}
