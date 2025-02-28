import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final textScaler = MediaQuery.of(context).textScaler;
    final double scale = textScaler.scale(14) / 14;

    return MyInkWell(
      onTap: onTap,
      child: SizedBox(
        height: 1.sw * 0.125 * scale,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
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
                        overflow: TextOverflow.ellipsis,
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
