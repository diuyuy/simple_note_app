import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/color/app_colors.dart';
import '../../bloc/app_setting_bloc.dart';
import '../app_setting_basics/app_setting_container.dart';

class PickSeedColorContainer extends StatelessWidget {
  const PickSeedColorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSettingContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
        child: Column(
          children: [
            buildColorRow(context, 0, 7),
            Gap(20),
            buildColorRow(context, 7, AppColors.seedColors.length)
          ],
        ),
      ),
    );
  }

  Widget buildColorRow(BuildContext context, int start, int end) {
    final currentColor = context
        .select((AppSettingBloc bloc) => bloc.state.appSetting.themeColor);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: AppColors.seedColors.sublist(start, end).map((hex) {
        return GestureDetector(
          onTap: () {
            context
                .read<AppSettingBloc>()
                .add(AppSettingEvent.appSettingUpdated(themeColor: hex));
          },
          child: Icon(
            currentColor == hex ? Icons.check_circle : Icons.circle,
            color: Color(hex),
            size: 36.w,
          ),
        );
      }).toList(),
    );
  }
}
