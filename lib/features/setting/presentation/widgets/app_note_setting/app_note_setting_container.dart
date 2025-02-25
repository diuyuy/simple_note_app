import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/core/constants/app_constants.dart';
import 'package:simple_note_app/core/router/router_path.dart';

import '../../bloc/app_setting_bloc.dart';
import '../app_setting_basics/app_setting_container.dart';
import '../app_setting_basics/app_setting_divider.dart';
import '../app_setting_basics/app_setting_tile.dart';
import '../app_setting_basics/app_setting_tile_with_button.dart';

class AppNoteSettingContainer extends StatelessWidget {
  const AppNoteSettingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final appSettingState = context.watch<AppSettingBloc>().state;
    final currentPath = GoRouterState.of(context).uri.path;

    return appSettingState.when(
      initial: (appSetting) => const SizedBox.shrink(),
      success: (appSetting) {
        return AppSettingContainer(
          child: Column(
            children: [
              AppSettingTile(
                title: 'Note Text Settings'.tr(),
                onTap: () {
                  context.push(RouterPath.noteTextSettingPage);
                },
              ),
              const AppSettingDivider(),
              AppSettingTile(
                title: 'Auto-Delete Interval'.tr(),
                subTitle: 'Select how often old notes will be deleted'.tr(),
                selectedWidget: appSetting.autoDeleteDays == 0
                    ? Text(
                        AppConstants.autoDeleteIntervals[0].tr(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      )
                    : Text(
                        'deleteInterval'
                            .tr(args: [appSetting.autoDeleteDays.toString()]),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                onTap: () {
                  context.push(
                      '$currentPath/${RouterPath.deleteIntervalSettingPage}');
                },
              ),
              const AppSettingDivider(),
              AppSettingTileWithButton(
                title: 'Enable Auto-Save for Notes'.tr(),
                button: CupertinoSwitch(
                  value: appSetting.isAutoSave,
                  activeTrackColor: Theme.of(context).colorScheme.primary,
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
