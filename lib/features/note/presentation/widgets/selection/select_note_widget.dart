import 'package:flutter/material.dart';

import '../../../../../core/color/app_colors.dart';
import '../note_card_widget.dart';

class SelectNoteWidget extends StatelessWidget {
  const SelectNoteWidget({
    super.key,
    required this.isSelected,
    required this.id,
    required this.title,
    required this.date,
    required this.isFavorite,
    required this.onTapCheckIcon,
  });

  final bool isSelected;
  final String id;
  final String title;
  final String date;
  final bool isFavorite;
  final void Function(String id) onTapCheckIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTapCheckIcon(id);
      },
      child: Row(
        children: [
          Flexible(
            flex: 12,
            child: NoteCardWidget(
              title: title,
              date: date,
              isFavorite: isFavorite,
              onTapTrailing: () {},
            ),
          ),
          const Spacer(flex: 1),
          Flexible(
            flex: 1,
            child: Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: isSelected
                  ? Theme.of(context).colorScheme.primary
                  : AppColors.midDarkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
