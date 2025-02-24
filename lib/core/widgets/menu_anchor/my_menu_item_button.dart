import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_constants.dart';

class MyMenuItemButton extends StatelessWidget {
  const MyMenuItemButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MenuItemButton(
      style: MenuItemButton.styleFrom(
        minimumSize: Size(
          AppConstants.menuAnchorMinWidth.w,
          AppConstants.menuAnchorMinHeight.w,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
