import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:simple_note_app/features/setting/presentation/widgets/app_note_setting/app_note_setting_container.dart';
import 'package:simple_note_app/features/setting/presentation/widgets/app_setting_basics/app_setting_title_text.dart';

import '../../../../core/widgets/app_bar_back_button.dart';
import '../bloc/app_setting_bloc.dart';
import '../widgets/app_theme_setting/app_theme_settings_container.dart';

class AppSettingPage extends StatelessWidget {
  const AppSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text('Settings'.tr()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) {
              final appSettingState = context.watch<AppSettingBloc>().state;

              return appSettingState.when(
                initial: (appSetting) => SizedBox.shrink(),
                success: (appSetting) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSettingTitleText(title: "Theme".tr()),
                      const AppThemeSettingsContainer(),
                      Gap(8),
                      AppSettingTitleText(title: "Note Settings".tr()),
                      const AppNoteSettingContainer(),
                    ],
                  );
                },
                failure: (appSetting, errorMessage) => Center(
                  child: Text(errorMessage),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
