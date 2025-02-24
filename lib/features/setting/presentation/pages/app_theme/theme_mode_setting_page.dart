import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_note_app/core/widgets/my_ink_well.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../bloc/app_setting_bloc.dart';
import '../../widgets/app_setting_basics/app_setting_container.dart';
import '../../widgets/app_setting_basics/app_setting_tile_with_button.dart';

class ThemeModeSettingPage extends StatelessWidget {
  const ThemeModeSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text('Theme Mode'.tr()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Builder(
            builder: (context) {
              final appSettingState = context.watch<AppSettingBloc>().state;

              return appSettingState.when(
                initial: (appSetting) => const SizedBox.shrink(),
                success: (appSetting) {
                  return Column(
                    children: [
                      AppSettingContainer(
                        child: Column(
                          children: [
                            MyInkWell(
                              onTap: () {
                                context.read<AppSettingBloc>().add(
                                      AppSettingEvent.appSettingUpdated(
                                        themeMode: 0,
                                      ),
                                    );
                              },
                              child: AppSettingTileWithButton(
                                title: AppConstants.themeMode[0].tr(),
                                button: Radio(
                                  value: 0,
                                  groupValue: appSetting.themeMode,
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            MyInkWell(
                              onTap: () {
                                context.read<AppSettingBloc>().add(
                                      AppSettingEvent.appSettingUpdated(
                                        themeMode: 1,
                                      ),
                                    );
                              },
                              child: AppSettingTileWithButton(
                                title: AppConstants.themeMode[1].tr(),
                                button: Radio(
                                  value: 1,
                                  groupValue: appSetting.themeMode,
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            MyInkWell(
                              onTap: () {
                                context.read<AppSettingBloc>().add(
                                      AppSettingEvent.appSettingUpdated(
                                        themeMode: 2,
                                      ),
                                    );
                              },
                              child: AppSettingTileWithButton(
                                title: AppConstants.themeMode[2].tr(),
                                button: Radio(
                                  value: 2,
                                  groupValue: appSetting.themeMode,
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
