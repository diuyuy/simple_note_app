import '../entities/app_setting.dart';

abstract interface class AppSettingRepository {
  AppSetting getAppSetting();
  Future<void> updateAppSetting(AppSetting updatedAppSetting);
}
