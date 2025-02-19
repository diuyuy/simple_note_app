import 'package:flutter/material.dart';

class ColorContainerWidget extends StatelessWidget {
  const ColorContainerWidget({
    super.key,
    required this.color,
    required this.width,
    required this.alpha,
    this.radius = 8.0,
    this.child,
  });

  final Color color;
  final double width;
  final int alpha;
  final double radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: color.withAlpha(alpha),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
