import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting.freezed.dart';

@freezed
class AppSetting with _$AppSetting {
  const factory AppSetting({
    @Default(true) bool isExitOnHome,
    @Default(0xFF2196F3) int themeColor,
    @Default(4) int fontSize,
  }) = _AppSetting;
}
