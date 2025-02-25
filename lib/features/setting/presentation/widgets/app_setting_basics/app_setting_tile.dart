import 'package:flutter/material.dart';
import 'package:simple_note_app/core/widgets/my_ink_well.dart';

import '../../../../../core/color/app_colors.dart';

class AppSettingTile extends StatelessWidget {
  const AppSettingTile({
    super.key,
    required this.title,
    this.subTitle,
    this.selectedWidget,
    required this.onTap,
  });

  final String title;
  final String? subTitle;
  final Widget? selectedWidget;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return MyInkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
        child: AspectRatio(
          aspectRatio: 8 / 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: subTitle != null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (subTitle != null)
                      Text(
                        subTitle!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                      ),
                  ],
                ),
              ),
              if (selectedWidget != null) selectedWidget!,
              Icon(
                Icons.keyboard_arrow_right,
                color: AppColors.midDarkGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
