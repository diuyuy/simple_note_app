part of 'app_setting_bloc.dart';

@freezed
class AppSettingEvent with _$AppSettingEvent {
  const factory AppSettingEvent.appSettingLoaded() = _AppSettingLoaded;

  const factory AppSettingEvent.appSettingUpdated({
    bool? isExitOnHome,
    int? themeMode,
    int? themeColor,
    int? titleFontSize,
    int? contentFontSize,
    double? textHeight,
    bool? isAutoSave,
    int? autoDeleteDays,
    DateTime? autoDeleteActiveAt,
  }) = _AppSettingUpdated;

  const factory AppSettingEvent.appSettingAutoDeleteOptionChanged({
    required int interval,
  }) = _AppSettingAutoDeleteOptionChanged;
}
