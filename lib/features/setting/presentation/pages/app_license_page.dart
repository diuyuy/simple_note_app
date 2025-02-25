import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppLicensePage extends StatelessWidget {
  const AppLicensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LicensePage(
      applicationName: 'License.applicationName'.tr(),
      applicationVersion: '1.0.0',
    );
  }
}
