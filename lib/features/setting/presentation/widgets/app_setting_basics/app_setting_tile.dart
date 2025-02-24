import 'package:flutter/material.dart';

import '../../../../../core/color/app_colors.dart';
import '../../../../../core/constants/app_constants.dart';

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
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        highlightColor: Colors.black.withAlpha(25),
        splashColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
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
                          //fontSize: AppConstants.appSettingTileFontSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (subTitle != null)
                        Text(
                          subTitle!,
                          style: TextStyle(
                            color: AppColors.midDarkGrey,
                            fontSize:
                                AppConstants.appSettingTileSubTitleFontSize,
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
      ),
    );
  }
}
