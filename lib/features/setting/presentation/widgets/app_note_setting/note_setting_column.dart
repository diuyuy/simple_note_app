import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/bottom_action_button.dart';
import '../../bloc/app_setting_bloc.dart';
import '../app_setting_basics/app_setting_container.dart';
import '../app_setting_basics/app_setting_title_text.dart';

class NoteSettingColumn extends StatefulWidget {
  const NoteSettingColumn({super.key});

  @override
  State<NoteSettingColumn> createState() => _NoteSettingColumnState();
}

class _NoteSettingColumnState extends State<NoteSettingColumn> {
  late int titleFontSize;
  late int contentFontSize;
  late double textHeight;

  @override
  void initState() {
    super.initState();
    final appSetting = context.read<AppSettingBloc>().state.appSetting;

    titleFontSize = appSetting.titleFontSize;
    contentFontSize = appSetting.contentFontSize;
    textHeight = appSetting.textHeight;
  }

  void changeTitleFontSize(double value) {
    setState(() {
      titleFontSize = value.toInt();
    });
  }

  void changeContentFontSize(double value) {
    setState(() {
      contentFontSize = value.toInt();
    });
  }

  void changeTextHeight(Set<double> height) {
    setState(() {
      textHeight = height.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSettingTitleText(title: 'Title Text Size'.tr()),
                AppSettingContainer(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Slider(
                      value: titleFontSize.toDouble(),
                      label: titleFontSize.toString(),
                      min: 12,
                      max: 28,
                      divisions: 28 - 12,
                      onChanged: changeTitleFontSize,
                    ),
                  ),
                ),
                Gap(8),
                AppSettingTitleText(title: 'Body Text Size'.tr()),
                AppSettingContainer(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Slider(
                      value: contentFontSize.toDouble(),
                      label: contentFontSize.toString(),
                      min: 12,
                      max: 28,
                      divisions: 28 - 12,
                      onChanged: changeContentFontSize,
                    ),
                  ),
                ),
                Gap(8),
                AppSettingTitleText(title: 'Line Height'.tr()),
                AppSettingContainer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 28),
                    child: Row(
                      children: [
                        Expanded(
                          child: SegmentedButton<double>(
                            style: SegmentedButton.styleFrom(
                              selectedBackgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              selectedForegroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            showSelectedIcon: false,
                            segments: buttonSegements,
                            selected: {textHeight},
                            onSelectionChanged: changeTextHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(8),
                AppSettingTitleText(title: 'Preview Screen'.tr()),
                AppSettingContainer(
                  child: SizedBox(
                    height: 240,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title'.tr(),
                            style: TextStyle(
                              fontSize: titleFontSize.toDouble(),
                            ),
                          ),
                          const Divider(),
                          Text(
                            'Adjusting text height changes readability.\nCheck the line spacing below.'
                                .tr(),
                            style: TextStyle(
                              fontSize: contentFontSize.toDouble(),
                              height: textHeight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        BottomActionButton(
          enabled: true,
          text: 'Save'.tr(),
          onTap: () {
            context.read<AppSettingBloc>().add(
                  AppSettingEvent.appSettingUpdated(
                    titleFontSize: titleFontSize,
                    contentFontSize: contentFontSize,
                    textHeight: textHeight,
                  ),
                );

            context.pop();
          },
        ),
      ],
    );
  }

  List<ButtonSegment<double>> get buttonSegements {
    return [
      ButtonSegment(
        value: 1.2,
        label: Text('1.2'),
      ),
      ButtonSegment(
        value: 1.5,
        label: Text('1.5'),
      ),
      ButtonSegment(
        value: 1.8,
        label: Text('1.8'),
      ),
    ];
  }
}
