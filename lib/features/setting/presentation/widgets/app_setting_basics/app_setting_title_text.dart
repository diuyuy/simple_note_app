import 'package:flutter/material.dart';

import '../../../../../core/constants/app_constants.dart';

class AppSettingTitleText extends StatelessWidget {
  const AppSettingTitleText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Text(
        title,
        style: TextStyle(
          fontSize: AppConstants.appSettingTitleFontSize,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
