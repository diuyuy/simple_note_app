import 'package:bloc/bloc.dart';

import '../../domain/entities/app_setting.dart';
import '../../domain/repositories/app_setting_repository.dart';

class AppSettingCubit extends Cubit<AppSetting> {
  final AppSettingRepository _appSettingRepository;

  AppSettingCubit(this._appSettingRepository)
      : super(_appSettingRepository.getAppSetting());

  Future<void> updateAppSetting({int? fontSize}) async {
    final updatedAppSetting = state.copyWith(
      fontSize: fontSize ?? state.fontSize,
    );
    await _appSettingRepository.updateAppSetting(updatedAppSetting);

    emit(updatedAppSetting);
  }
}
