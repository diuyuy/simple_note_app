import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting.freezed.dart';

@freezed
class AppSetting with _$AppSetting {
  const factory AppSetting({
    @Default(true) bool isExitOnHome,
    @Default(2) int themeMode,
    @Default(0xFF2196F3) int themeColor,
    @Default(22) int titleFontSize,
    @Default(16) int contentFontSize,
    @Default(1.2) double textHeight,
    @Default(false) bool isAutoSave,
    @Default(0) int autoDeleteDays,
    @Default(false) bool isAutoDelete,
    DateTime? autoDeleteActiveAt,
  }) = _AppSetting;
}
