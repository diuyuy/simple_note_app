part of 'app_setting_bloc.dart';

@freezed
class AppSettingEvent with _$AppSettingEvent {
  const factory AppSettingEvent.started() = _Started;
  const factory AppSettingEvent.appSettingLoaded() = _AppSettingLoaded;
  const factory AppSettingEvent.appSettingUpdated({
    bool? isExitOnHome,
    bool? isDarkMode,
    int? themeColor,
    int? fontSize,
    double? textHeight,
    bool? isAutoSave,
    int? autoDeleteDays,
  }) = _AppSettingUpdated;
}
