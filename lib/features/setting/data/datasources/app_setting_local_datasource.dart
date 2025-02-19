import 'package:hive_ce/hive.dart';

import '../models/app_setting_model.dart';

class AppSettingLocalDatasource {
  AppSettingLocalDatasource(this._box);

  final Box<AppSettingModel> _box;

  String get _boxKey => 'appSetting';

  AppSettingModel getAppSetting() {
    return _box.get(_boxKey) ?? AppSettingModel();
  }

  Future<void> updateAppSetting(AppSettingModel updatedAppSetting) async {
    _box.put(_boxKey, updatedAppSetting);
  }
}
