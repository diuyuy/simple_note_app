import 'dart:developer';

import 'package:bloc/bloc.dart';

import '../../domain/entities/app_setting.dart';
import '../../domain/repositories/app_setting_repository.dart';

class AppSettingCubit extends Cubit<AppSetting> {
  final AppSettingRepository _appSettingRepository;

  AppSettingCubit(this._appSettingRepository)
      : super(_appSettingRepository.getAppSetting());

  Future<void> updateAppSetting(
      {bool? isExitOnHome, int? themeColor, int? fontSize}) async {
    final updatedAppSetting = state.copyWith(
      isExitOnHome: isExitOnHome ?? state.isExitOnHome,
      themeColor: themeColor ?? state.themeColor,
      fontSize: fontSize ?? state.fontSize,
    );
    await _appSettingRepository.updateAppSetting(updatedAppSetting);

    emit(_appSettingRepository.getAppSetting());
  }

  @override
  void onChange(Change<AppSetting> change) {
    log(change.toString());
    super.onChange(change);
  }
}
