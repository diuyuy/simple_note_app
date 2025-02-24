import 'package:flutter/material.dart';

class MyInkWell extends StatelessWidget {
  const MyInkWell({
    super.key,
    required this.onTap,
    required this.child,
  });

  final void Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.black.withAlpha(25),
      splashColor: Colors.transparent,
      child: child,
    );
  }
}
