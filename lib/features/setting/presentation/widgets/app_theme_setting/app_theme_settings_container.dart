import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/color/app_colors.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../bloc/app_setting_bloc.dart';
import '../app_setting_basics/app_setting_container.dart';
import '../app_setting_basics/app_setting_divider.dart';
import '../app_setting_basics/app_setting_tile.dart';

class AppThemeSettingsContainer extends StatelessWidget {
  const AppThemeSettingsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final appSettingState = context.watch<AppSettingBloc>().state;
    return appSettingState.when(
      initial: (appSetting) => const SizedBox.shrink(),
      success: (appSetting) {
        return AppSettingContainer(
          child: Column(
            children: [
              AppSettingTile(
                title: "Theme Mode".tr(),
                selectedWidget: Text(
                  AppConstants.themeMode[appSetting.themeMode].tr(),
                  style: TextStyle(
                    color: AppColors.darkGrey,
                  ),
                ),
                onTap: () {},
              ),
              const AppSettingDivider(),
              AppSettingTile(
                title: "Theme Color".tr(),
                selectedWidget: Icon(
                  Icons.circle,
                  color: Color(appSetting.themeColor),
                ),
                onTap: () {},
              ),
            ],
          ),
        );
      },
      failure: (appSetting, errorMessage) => const SizedBox.shrink(),
    );
  }
}
