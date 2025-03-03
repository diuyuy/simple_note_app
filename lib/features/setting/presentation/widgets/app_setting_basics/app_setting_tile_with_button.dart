import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    final textScaler = MediaQuery.of(context).textScaler;
    final double scale = textScaler.scale(14) / 14;

    return SizedBox(
      height: 1.sw * 0.125 * scale + 8,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  //fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  fontWeight: FontWeight.w500,
                  fontFeatures: [FontFeature.tabularFigures()],
                ),
              ),
            ),
            button,
          ],
        ),
      ),
    );
  }
}
