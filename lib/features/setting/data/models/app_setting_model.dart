import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_model.freezed.dart';

@freezed
class AppSettingModel with _$AppSettingModel {
  const factory AppSettingModel({
    @Default(true) bool isExitOnHome,
    @Default(2) int themeMode,
    @Default(0xFF2196F3) int themeColor,
    @Default(4) int fontSize,
    @Default(1.0) double textHeight,
    @Default(false) bool isAutoSave,
    @Default(0) int autoDeleteDays,
  }) = _AppSettingModel;
}
