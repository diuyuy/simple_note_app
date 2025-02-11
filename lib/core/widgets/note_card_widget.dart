import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
      child: ListTile(
        leading: ColorContainerWidget(
          color: primaryColor,
          alpha: 80,
          width: 36,
          child: Icon(
            Icons.note_rounded,
            color: primaryColor,
          ),
        ),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          'NoteCardWidget.updateDate'.tr(
            args: [date],
          ),
        ),
        trailing: GestureDetector(
          onTap: onTapTrailing,
          child: Icon(
            isFavorite ? Icons.star : Icons.star_border,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
