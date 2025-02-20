import 'package:flutter/material.dart';

class CodePointIcon extends StatelessWidget {
  const CodePointIcon({
    super.key,
    required this.codePoint,
    this.color,
    this.size,
  });

  final int codePoint;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      IconData(
        codePoint,
        fontFamily: 'MaterialIcons',
      ),
      size: size,
      color: color,
    );
  }
}
