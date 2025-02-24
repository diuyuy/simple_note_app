import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_note_app/features/setting/presentation/widgets/app_setting_basics/app_setting_divider.dart';

import '../../bloc/app_setting_bloc.dart';
import '../app_setting_basics/app_setting_container.dart';
import '../app_setting_basics/app_setting_tile.dart';
import '../app_setting_basics/app_setting_tile_with_button.dart';

class AppNoteSettingContainer extends StatelessWidget {
  const AppNoteSettingContainer({super.key});

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
                title: 'Note Text Settings'.tr(),
                onTap: () {},
              ),
              const AppSettingDivider(),
              AppSettingTile(
                title: 'Auto-Delete Interval'.tr(),
                subTitle: 'Select how often old notes will be deleted'.tr(),
                selectedWidget: Text('deleteInterval'
                    .tr(args: [appSetting.autoDeleteDays.toString()])),
                onTap: () {},
              ),
              const AppSettingDivider(),
              AppSettingTileWithButton(
                title: 'Enable Auto-Save for Notes'.tr(),
                button: Switch(
                  value: appSetting.isAutoSave,
                  onChanged: (value) {
                    context.read<AppSettingBloc>().add(
                          AppSettingEvent.appSettingUpdated(isAutoSave: value),
                        );
                  },
                ),
              ),
            ],
          ),
        );
      },
      failure: (appSetting, errorMessage) => const SizedBox.shrink(),
    );
  }
}
