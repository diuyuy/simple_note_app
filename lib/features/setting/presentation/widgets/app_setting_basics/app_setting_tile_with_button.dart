import 'package:flutter/material.dart';

class AppSettingTileWithButton extends StatelessWidget {
  const AppSettingTileWithButton({
    super.key,
    required this.title,
    required this.button,
  });

  final String title;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: AspectRatio(
        aspectRatio: 8 / 1,
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFeatures: [FontFeature.tabularFigures()],
              ),
            ),
            const Spacer(),
            button,
          ],
        ),
      ),
    );
  }
}
