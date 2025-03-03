import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/widgets/my_ink_well.dart';
import '../../bloc/app_setting_bloc.dart';
import '../../widgets/app_setting_basics/app_setting_container.dart';
import '../../widgets/app_setting_basics/app_setting_divider.dart';
import '../../widgets/app_setting_basics/app_setting_tile_with_button.dart';

class DeleteIntervalSettingPage extends StatelessWidget {
  const DeleteIntervalSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('Auto-Delete Interval'.tr()),
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
                            getSetIntervalTile(
                              context,
                              0,
                              AppConstants.autoDeleteIntervalsNum[0],
                              appSetting.autoDeleteDays,
                            ),
                            ...[
                              for (int index = 1;
                                  index <
                                      AppConstants.autoDeleteIntervals.length -
                                          1;
                                  index++)
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const AppSettingDivider(),
                                    getSetIntervalTile(
                                      context,
                                      index,
                                      AppConstants
                                          .autoDeleteIntervalsNum[index],
                                      appSetting.autoDeleteDays,
                                    ),
                                  ],
                                ),
                            ],
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

  Widget getSetIntervalTile(
      BuildContext context, int index, int value, int groupValue) {
    return MyInkWell(
      onTap: () {
        context.read<AppSettingBloc>().add(
              AppSettingEvent.appSettingUpdated(
                autoDeleteDays: value,
                autoDeleteActiveAt: DateTime.now(),
              ),
            );
      },
      child: AppSettingTileWithButton(
        title: AppConstants.autoDeleteIntervals[index].tr(),
        button: Radio(
          value: value,
          groupValue: groupValue,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
