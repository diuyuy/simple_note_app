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
    return Material(
      color: Theme.of(context).colorScheme.onSecondary,
      child: InkWell(
        onTap: onTap,
        highlightColor:
            Theme.of(context).colorScheme.onSurfaceVariant.withAlpha(40),
        splashColor: Colors.transparent,
        child: child,
      ),
    );
  }
}
