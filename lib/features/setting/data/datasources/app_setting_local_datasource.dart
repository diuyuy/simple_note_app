import 'dart:developer';

import 'package:hive_ce/hive.dart';

import '../models/app_setting_model.dart';

class AppSettingLocalDatasource {
  AppSettingLocalDatasource(this._box);

  final Box<AppSettingModel> _box;

  String get _boxKey => 'appSetting';

  AppSettingModel getAppSetting() {
    final appSetting = _box.get(_boxKey) ?? AppSettingModel();
    log(appSetting.toString());
    return appSetting;
  }

  Future<void> updateAppSetting(AppSettingModel updatedAppSetting) async {
    await _box.put(_boxKey, updatedAppSetting);
  }
}
