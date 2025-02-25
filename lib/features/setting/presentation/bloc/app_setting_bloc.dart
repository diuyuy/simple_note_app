import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/app_setting.dart';
import '../../domain/repositories/app_setting_repository.dart';

part 'app_setting_bloc.freezed.dart';
part 'app_setting_event.dart';
part 'app_setting_state.dart';

class AppSettingBloc extends Bloc<AppSettingEvent, AppSettingState> {
  AppSettingBloc(this._repository)
      : super(_Initial(appSetting: _repository.getAppSetting())) {
    on<_AppSettingLoaded>(_onAppSettingLoaded);
    on<_AppSettingUpdated>(_onAppSettingUpdated);
  }

  final AppSettingRepository _repository;

  void _onAppSettingLoaded(
      _AppSettingLoaded event, Emitter<AppSettingState> emit) {
    try {
      final appSetting = _repository.getAppSetting();
      emit(_AppSettingLoadSuccess(appSetting: appSetting));
    } catch (e) {
      addError(e);
      emit(_AppSettingLoadFailure(
          appSetting: AppSetting(), errorMessage: e.toString()));
    }
  }

  Future<void> _onAppSettingUpdated(
      _AppSettingUpdated event, Emitter<AppSettingState> emit) async {
    try {
      final currentSetting = _repository.getAppSetting();

      final updatedAppSetting = currentSetting.copyWith(
        isExitOnHome: event.isExitOnHome ?? currentSetting.isExitOnHome,
        themeMode: event.themeMode ?? currentSetting.themeMode,
        themeColor: event.themeColor ?? currentSetting.themeColor,
        titleFontSize: event.titleFontSize ?? currentSetting.titleFontSize,
        contentFontSize:
            event.contentFontSize ?? currentSetting.contentFontSize,
        isAutoSave: event.isAutoSave ?? currentSetting.isAutoSave,
        textHeight: event.textHeight ?? currentSetting.textHeight,
        autoDeleteDays: event.autoDeleteDays ?? currentSetting.autoDeleteDays,
      );

      await _repository.updateAppSetting(updatedAppSetting);

      emit(_AppSettingLoadSuccess(appSetting: _repository.getAppSetting()));
    } catch (e) {
      addError(e);
      emit(_AppSettingLoadFailure(
          appSetting: AppSetting(), errorMessage: e.toString()));
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log(error.toString());
    super.onError(error, stackTrace);
  }

  @override
  void onChange(Change<AppSettingState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
