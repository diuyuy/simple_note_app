import '../../domain/entities/app_setting.dart';
import '../../domain/repositories/app_setting_repository.dart';
import '../datasources/app_setting_local_datasource.dart';
import '../models/app_setting_model.dart';

class AppSettingRepositoryImpl implements AppSettingRepository {
  AppSettingRepositoryImpl(this._localDatasource);

  final AppSettingLocalDatasource _localDatasource;

  @override
  AppSetting getAppSetting() {
    final appSetting = _localDatasource.getAppSetting();
    return modelToEntity(appSetting);
  }

  @override
  Future<void> updateAppSetting(AppSetting updatedAppSetting) async {
    await _localDatasource.updateAppSetting(entityToModel(updatedAppSetting));
  }

  AppSetting modelToEntity(AppSettingModel appSetting) {
    return AppSetting(
      isExitOnHome: appSetting.isExitOnHome,
      themeColor: appSetting.themeColor,
      fontSize: appSetting.fontSize,
      isAutoSave: appSetting.isAutoSave,
      themeMode: appSetting.themeMode,
      textHeight: appSetting.textHeight,
      autoDeleteDays: appSetting.autoDeleteDays,
    );
  }

  AppSettingModel entityToModel(AppSetting appSetting) {
    return AppSettingModel(
      isExitOnHome: appSetting.isExitOnHome,
      themeColor: appSetting.themeColor,
      fontSize: appSetting.fontSize,
      isAutoSave: appSetting.isAutoSave,
      themeMode: appSetting.themeMode,
      textHeight: appSetting.textHeight,
      autoDeleteDays: appSetting.autoDeleteDays,
    );
  }
}
