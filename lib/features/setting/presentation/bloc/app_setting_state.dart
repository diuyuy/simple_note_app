part of 'app_setting_bloc.dart';

@freezed
class AppSettingState with _$AppSettingState {
  const factory AppSettingState.initial({
    required AppSetting appSetting,
  }) = _Initial;

  const factory AppSettingState.success({
    required AppSetting appSetting,
  }) = _AppSettingLoadSuccess;

  const factory AppSettingState.failure({
    required AppSetting appSetting,
    required String errorMessage,
  }) = _AppSettingLoadFailure;
}
