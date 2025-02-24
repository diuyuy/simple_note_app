import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/app_colors.dart';

class BottomActionButton extends StatelessWidget {
  const BottomActionButton({
    super.key,
    required this.enabled,
    required this.text,
    required this.onTap,
  });

  final bool enabled;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
      child: GestureDetector(
        onTap: () {
          if (!enabled) {
            return;
          }
          onTap();
        },
        child: AspectRatio(
          aspectRatio: 8 / 1,
          child: Container(
            width: 1.sw,
            decoration: BoxDecoration(
              color: enabled
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey[400],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                text,
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
      ),
    );
  }
}
