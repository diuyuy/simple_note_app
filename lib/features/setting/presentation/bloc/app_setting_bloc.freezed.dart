// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() appSettingLoaded,
    required TResult Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)
        appSettingUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? appSettingLoaded,
    TResult? Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)?
        appSettingUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? appSettingLoaded,
    TResult Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)?
        appSettingUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AppSettingLoaded value) appSettingLoaded,
    required TResult Function(_AppSettingUpdated value) appSettingUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AppSettingLoaded value)? appSettingLoaded,
    TResult? Function(_AppSettingUpdated value)? appSettingUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AppSettingLoaded value)? appSettingLoaded,
    TResult Function(_AppSettingUpdated value)? appSettingUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingEventCopyWith<$Res> {
  factory $AppSettingEventCopyWith(
          AppSettingEvent value, $Res Function(AppSettingEvent) then) =
      _$AppSettingEventCopyWithImpl<$Res, AppSettingEvent>;
}

/// @nodoc
class _$AppSettingEventCopyWithImpl<$Res, $Val extends AppSettingEvent>
    implements $AppSettingEventCopyWith<$Res> {
  _$AppSettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AppSettingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppSettingEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() appSettingLoaded,
    required TResult Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)
        appSettingUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? appSettingLoaded,
    TResult? Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)?
        appSettingUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? appSettingLoaded,
    TResult Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)?
        appSettingUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AppSettingLoaded value) appSettingLoaded,
    required TResult Function(_AppSettingUpdated value) appSettingUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AppSettingLoaded value)? appSettingLoaded,
    TResult? Function(_AppSettingUpdated value)? appSettingUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AppSettingLoaded value)? appSettingLoaded,
    TResult Function(_AppSettingUpdated value)? appSettingUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppSettingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AppSettingLoadedImplCopyWith<$Res> {
  factory _$$AppSettingLoadedImplCopyWith(_$AppSettingLoadedImpl value,
          $Res Function(_$AppSettingLoadedImpl) then) =
      __$$AppSettingLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppSettingLoadedImplCopyWithImpl<$Res>
    extends _$AppSettingEventCopyWithImpl<$Res, _$AppSettingLoadedImpl>
    implements _$$AppSettingLoadedImplCopyWith<$Res> {
  __$$AppSettingLoadedImplCopyWithImpl(_$AppSettingLoadedImpl _value,
      $Res Function(_$AppSettingLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppSettingLoadedImpl implements _AppSettingLoaded {
  const _$AppSettingLoadedImpl();

  @override
  String toString() {
    return 'AppSettingEvent.appSettingLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppSettingLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() appSettingLoaded,
    required TResult Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)
        appSettingUpdated,
  }) {
    return appSettingLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? appSettingLoaded,
    TResult? Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)?
        appSettingUpdated,
  }) {
    return appSettingLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? appSettingLoaded,
    TResult Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)?
        appSettingUpdated,
    required TResult orElse(),
  }) {
    if (appSettingLoaded != null) {
      return appSettingLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AppSettingLoaded value) appSettingLoaded,
    required TResult Function(_AppSettingUpdated value) appSettingUpdated,
  }) {
    return appSettingLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AppSettingLoaded value)? appSettingLoaded,
    TResult? Function(_AppSettingUpdated value)? appSettingUpdated,
  }) {
    return appSettingLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AppSettingLoaded value)? appSettingLoaded,
    TResult Function(_AppSettingUpdated value)? appSettingUpdated,
    required TResult orElse(),
  }) {
    if (appSettingLoaded != null) {
      return appSettingLoaded(this);
    }
    return orElse();
  }
}

abstract class _AppSettingLoaded implements AppSettingEvent {
  const factory _AppSettingLoaded() = _$AppSettingLoadedImpl;
}

/// @nodoc
abstract class _$$AppSettingUpdatedImplCopyWith<$Res> {
  factory _$$AppSettingUpdatedImplCopyWith(_$AppSettingUpdatedImpl value,
          $Res Function(_$AppSettingUpdatedImpl) then) =
      __$$AppSettingUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool? isExitOnHome,
      bool? isDarkMode,
      int? themeColor,
      int? fontSize,
      double? textHeight,
      bool? isAutoSave,
      int? autoDeleteDays});
}

/// @nodoc
class __$$AppSettingUpdatedImplCopyWithImpl<$Res>
    extends _$AppSettingEventCopyWithImpl<$Res, _$AppSettingUpdatedImpl>
    implements _$$AppSettingUpdatedImplCopyWith<$Res> {
  __$$AppSettingUpdatedImplCopyWithImpl(_$AppSettingUpdatedImpl _value,
      $Res Function(_$AppSettingUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExitOnHome = freezed,
    Object? isDarkMode = freezed,
    Object? themeColor = freezed,
    Object? fontSize = freezed,
    Object? textHeight = freezed,
    Object? isAutoSave = freezed,
    Object? autoDeleteDays = freezed,
  }) {
    return _then(_$AppSettingUpdatedImpl(
      isExitOnHome: freezed == isExitOnHome
          ? _value.isExitOnHome
          : isExitOnHome // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDarkMode: freezed == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      themeColor: freezed == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int?,
      textHeight: freezed == textHeight
          ? _value.textHeight
          : textHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      isAutoSave: freezed == isAutoSave
          ? _value.isAutoSave
          : isAutoSave // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoDeleteDays: freezed == autoDeleteDays
          ? _value.autoDeleteDays
          : autoDeleteDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AppSettingUpdatedImpl implements _AppSettingUpdated {
  const _$AppSettingUpdatedImpl(
      {this.isExitOnHome,
      this.isDarkMode,
      this.themeColor,
      this.fontSize,
      this.textHeight,
      this.isAutoSave,
      this.autoDeleteDays});

  @override
  final bool? isExitOnHome;
  @override
  final bool? isDarkMode;
  @override
  final int? themeColor;
  @override
  final int? fontSize;
  @override
  final double? textHeight;
  @override
  final bool? isAutoSave;
  @override
  final int? autoDeleteDays;

  @override
  String toString() {
    return 'AppSettingEvent.appSettingUpdated(isExitOnHome: $isExitOnHome, isDarkMode: $isDarkMode, themeColor: $themeColor, fontSize: $fontSize, textHeight: $textHeight, isAutoSave: $isAutoSave, autoDeleteDays: $autoDeleteDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingUpdatedImpl &&
            (identical(other.isExitOnHome, isExitOnHome) ||
                other.isExitOnHome == isExitOnHome) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.textHeight, textHeight) ||
                other.textHeight == textHeight) &&
            (identical(other.isAutoSave, isAutoSave) ||
                other.isAutoSave == isAutoSave) &&
            (identical(other.autoDeleteDays, autoDeleteDays) ||
                other.autoDeleteDays == autoDeleteDays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isExitOnHome, isDarkMode,
      themeColor, fontSize, textHeight, isAutoSave, autoDeleteDays);

  /// Create a copy of AppSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingUpdatedImplCopyWith<_$AppSettingUpdatedImpl> get copyWith =>
      __$$AppSettingUpdatedImplCopyWithImpl<_$AppSettingUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() appSettingLoaded,
    required TResult Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)
        appSettingUpdated,
  }) {
    return appSettingUpdated(isExitOnHome, isDarkMode, themeColor, fontSize,
        textHeight, isAutoSave, autoDeleteDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? appSettingLoaded,
    TResult? Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)?
        appSettingUpdated,
  }) {
    return appSettingUpdated?.call(isExitOnHome, isDarkMode, themeColor,
        fontSize, textHeight, isAutoSave, autoDeleteDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? appSettingLoaded,
    TResult Function(
            bool? isExitOnHome,
            bool? isDarkMode,
            int? themeColor,
            int? fontSize,
            double? textHeight,
            bool? isAutoSave,
            int? autoDeleteDays)?
        appSettingUpdated,
    required TResult orElse(),
  }) {
    if (appSettingUpdated != null) {
      return appSettingUpdated(isExitOnHome, isDarkMode, themeColor, fontSize,
          textHeight, isAutoSave, autoDeleteDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AppSettingLoaded value) appSettingLoaded,
    required TResult Function(_AppSettingUpdated value) appSettingUpdated,
  }) {
    return appSettingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AppSettingLoaded value)? appSettingLoaded,
    TResult? Function(_AppSettingUpdated value)? appSettingUpdated,
  }) {
    return appSettingUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AppSettingLoaded value)? appSettingLoaded,
    TResult Function(_AppSettingUpdated value)? appSettingUpdated,
    required TResult orElse(),
  }) {
    if (appSettingUpdated != null) {
      return appSettingUpdated(this);
    }
    return orElse();
  }
}

abstract class _AppSettingUpdated implements AppSettingEvent {
  const factory _AppSettingUpdated(
      {final bool? isExitOnHome,
      final bool? isDarkMode,
      final int? themeColor,
      final int? fontSize,
      final double? textHeight,
      final bool? isAutoSave,
      final int? autoDeleteDays}) = _$AppSettingUpdatedImpl;

  bool? get isExitOnHome;
  bool? get isDarkMode;
  int? get themeColor;
  int? get fontSize;
  double? get textHeight;
  bool? get isAutoSave;
  int? get autoDeleteDays;

  /// Create a copy of AppSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingUpdatedImplCopyWith<_$AppSettingUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppSettingState {
  AppSetting get appSetting => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppSetting appSetting) initial,
    required TResult Function(AppSetting appSetting) success,
    required TResult Function(AppSetting appSetting, String errorMessage)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppSetting appSetting)? initial,
    TResult? Function(AppSetting appSetting)? success,
    TResult? Function(AppSetting appSetting, String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppSetting appSetting)? initial,
    TResult Function(AppSetting appSetting)? success,
    TResult Function(AppSetting appSetting, String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppSettingLoadSuccess value) success,
    required TResult Function(_AppSettingLoadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppSettingLoadSuccess value)? success,
    TResult? Function(_AppSettingLoadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppSettingLoadSuccess value)? success,
    TResult Function(_AppSettingLoadFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingStateCopyWith<AppSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingStateCopyWith<$Res> {
  factory $AppSettingStateCopyWith(
          AppSettingState value, $Res Function(AppSettingState) then) =
      _$AppSettingStateCopyWithImpl<$Res, AppSettingState>;
  @useResult
  $Res call({AppSetting appSetting});

  $AppSettingCopyWith<$Res> get appSetting;
}

/// @nodoc
class _$AppSettingStateCopyWithImpl<$Res, $Val extends AppSettingState>
    implements $AppSettingStateCopyWith<$Res> {
  _$AppSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSetting = null,
  }) {
    return _then(_value.copyWith(
      appSetting: null == appSetting
          ? _value.appSetting
          : appSetting // ignore: cast_nullable_to_non_nullable
              as AppSetting,
    ) as $Val);
  }

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingCopyWith<$Res> get appSetting {
    return $AppSettingCopyWith<$Res>(_value.appSetting, (value) {
      return _then(_value.copyWith(appSetting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AppSettingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSetting appSetting});

  @override
  $AppSettingCopyWith<$Res> get appSetting;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppSettingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSetting = null,
  }) {
    return _then(_$InitialImpl(
      appSetting: null == appSetting
          ? _value.appSetting
          : appSetting // ignore: cast_nullable_to_non_nullable
              as AppSetting,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.appSetting});

  @override
  final AppSetting appSetting;

  @override
  String toString() {
    return 'AppSettingState.initial(appSetting: $appSetting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.appSetting, appSetting) ||
                other.appSetting == appSetting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSetting);

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppSetting appSetting) initial,
    required TResult Function(AppSetting appSetting) success,
    required TResult Function(AppSetting appSetting, String errorMessage)
        failure,
  }) {
    return initial(appSetting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppSetting appSetting)? initial,
    TResult? Function(AppSetting appSetting)? success,
    TResult? Function(AppSetting appSetting, String errorMessage)? failure,
  }) {
    return initial?.call(appSetting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppSetting appSetting)? initial,
    TResult Function(AppSetting appSetting)? success,
    TResult Function(AppSetting appSetting, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(appSetting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppSettingLoadSuccess value) success,
    required TResult Function(_AppSettingLoadFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppSettingLoadSuccess value)? success,
    TResult? Function(_AppSettingLoadFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppSettingLoadSuccess value)? success,
    TResult Function(_AppSettingLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppSettingState {
  const factory _Initial({required final AppSetting appSetting}) =
      _$InitialImpl;

  @override
  AppSetting get appSetting;

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppSettingLoadSuccessImplCopyWith<$Res>
    implements $AppSettingStateCopyWith<$Res> {
  factory _$$AppSettingLoadSuccessImplCopyWith(
          _$AppSettingLoadSuccessImpl value,
          $Res Function(_$AppSettingLoadSuccessImpl) then) =
      __$$AppSettingLoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSetting appSetting});

  @override
  $AppSettingCopyWith<$Res> get appSetting;
}

/// @nodoc
class __$$AppSettingLoadSuccessImplCopyWithImpl<$Res>
    extends _$AppSettingStateCopyWithImpl<$Res, _$AppSettingLoadSuccessImpl>
    implements _$$AppSettingLoadSuccessImplCopyWith<$Res> {
  __$$AppSettingLoadSuccessImplCopyWithImpl(_$AppSettingLoadSuccessImpl _value,
      $Res Function(_$AppSettingLoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSetting = null,
  }) {
    return _then(_$AppSettingLoadSuccessImpl(
      appSetting: null == appSetting
          ? _value.appSetting
          : appSetting // ignore: cast_nullable_to_non_nullable
              as AppSetting,
    ));
  }
}

/// @nodoc

class _$AppSettingLoadSuccessImpl implements _AppSettingLoadSuccess {
  const _$AppSettingLoadSuccessImpl({required this.appSetting});

  @override
  final AppSetting appSetting;

  @override
  String toString() {
    return 'AppSettingState.success(appSetting: $appSetting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingLoadSuccessImpl &&
            (identical(other.appSetting, appSetting) ||
                other.appSetting == appSetting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSetting);

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingLoadSuccessImplCopyWith<_$AppSettingLoadSuccessImpl>
      get copyWith => __$$AppSettingLoadSuccessImplCopyWithImpl<
          _$AppSettingLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppSetting appSetting) initial,
    required TResult Function(AppSetting appSetting) success,
    required TResult Function(AppSetting appSetting, String errorMessage)
        failure,
  }) {
    return success(appSetting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppSetting appSetting)? initial,
    TResult? Function(AppSetting appSetting)? success,
    TResult? Function(AppSetting appSetting, String errorMessage)? failure,
  }) {
    return success?.call(appSetting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppSetting appSetting)? initial,
    TResult Function(AppSetting appSetting)? success,
    TResult Function(AppSetting appSetting, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(appSetting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppSettingLoadSuccess value) success,
    required TResult Function(_AppSettingLoadFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppSettingLoadSuccess value)? success,
    TResult? Function(_AppSettingLoadFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppSettingLoadSuccess value)? success,
    TResult Function(_AppSettingLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AppSettingLoadSuccess implements AppSettingState {
  const factory _AppSettingLoadSuccess({required final AppSetting appSetting}) =
      _$AppSettingLoadSuccessImpl;

  @override
  AppSetting get appSetting;

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingLoadSuccessImplCopyWith<_$AppSettingLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppSettingLoadFailureImplCopyWith<$Res>
    implements $AppSettingStateCopyWith<$Res> {
  factory _$$AppSettingLoadFailureImplCopyWith(
          _$AppSettingLoadFailureImpl value,
          $Res Function(_$AppSettingLoadFailureImpl) then) =
      __$$AppSettingLoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSetting appSetting, String errorMessage});

  @override
  $AppSettingCopyWith<$Res> get appSetting;
}

/// @nodoc
class __$$AppSettingLoadFailureImplCopyWithImpl<$Res>
    extends _$AppSettingStateCopyWithImpl<$Res, _$AppSettingLoadFailureImpl>
    implements _$$AppSettingLoadFailureImplCopyWith<$Res> {
  __$$AppSettingLoadFailureImplCopyWithImpl(_$AppSettingLoadFailureImpl _value,
      $Res Function(_$AppSettingLoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSetting = null,
    Object? errorMessage = null,
  }) {
    return _then(_$AppSettingLoadFailureImpl(
      appSetting: null == appSetting
          ? _value.appSetting
          : appSetting // ignore: cast_nullable_to_non_nullable
              as AppSetting,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppSettingLoadFailureImpl implements _AppSettingLoadFailure {
  const _$AppSettingLoadFailureImpl(
      {required this.appSetting, required this.errorMessage});

  @override
  final AppSetting appSetting;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppSettingState.failure(appSetting: $appSetting, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingLoadFailureImpl &&
            (identical(other.appSetting, appSetting) ||
                other.appSetting == appSetting) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSetting, errorMessage);

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingLoadFailureImplCopyWith<_$AppSettingLoadFailureImpl>
      get copyWith => __$$AppSettingLoadFailureImplCopyWithImpl<
          _$AppSettingLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppSetting appSetting) initial,
    required TResult Function(AppSetting appSetting) success,
    required TResult Function(AppSetting appSetting, String errorMessage)
        failure,
  }) {
    return failure(appSetting, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppSetting appSetting)? initial,
    TResult? Function(AppSetting appSetting)? success,
    TResult? Function(AppSetting appSetting, String errorMessage)? failure,
  }) {
    return failure?.call(appSetting, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppSetting appSetting)? initial,
    TResult Function(AppSetting appSetting)? success,
    TResult Function(AppSetting appSetting, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(appSetting, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppSettingLoadSuccess value) success,
    required TResult Function(_AppSettingLoadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppSettingLoadSuccess value)? success,
    TResult? Function(_AppSettingLoadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppSettingLoadSuccess value)? success,
    TResult Function(_AppSettingLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AppSettingLoadFailure implements AppSettingState {
  const factory _AppSettingLoadFailure(
      {required final AppSetting appSetting,
      required final String errorMessage}) = _$AppSettingLoadFailureImpl;

  @override
  AppSetting get appSetting;
  String get errorMessage;

  /// Create a copy of AppSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingLoadFailureImplCopyWith<_$AppSettingLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
