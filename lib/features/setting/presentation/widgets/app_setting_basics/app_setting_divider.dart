import 'package:flutter/material.dart';

class AppSettingDivider extends StatelessWidget {
  const AppSettingDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Divider(height: 1),
    );
  }
}
