import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color/app_colors.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.enabled,
    required this.onTap,
  });

  final bool enabled;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 8 / 1,
        child: Container(
          width: 1.sw,
          decoration: BoxDecoration(
            color: enabled ? Theme.of(context).primaryColor : Colors.grey[400],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              'SaveButton.save'.tr(),
              style: TextStyle(
                color: enabled
                    ? Theme.of(context).colorScheme.onPrimary
                    : AppColors.midDarkGrey,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
