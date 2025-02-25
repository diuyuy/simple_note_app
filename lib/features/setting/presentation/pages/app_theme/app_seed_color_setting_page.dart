import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_theme_setting/pick_seed_color_container.dart';

class AppSeedColorSettingPage extends StatelessWidget {
  const AppSeedColorSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // // leading: const AppBarBackButton(),
        title: Text('Theme Color'.tr()),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              PickSeedColorContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
