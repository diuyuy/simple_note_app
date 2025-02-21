import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_model.freezed.dart';

@freezed
class AppSettingModel with _$AppSettingModel {
  const factory AppSettingModel({
    @Default(true) bool isExitOnHome,
    @Default(0xFF2196F3) int themeColor,
    @Default(4) int fontSize,
  }) = _AppSettingModel;
}
