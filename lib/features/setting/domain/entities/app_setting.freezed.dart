// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSetting {
  bool get isExitOnHome => throw _privateConstructorUsedError;
  int get themeMode => throw _privateConstructorUsedError;
  int get themeColor => throw _privateConstructorUsedError;
  int get fontSize => throw _privateConstructorUsedError;
  double get textHeight => throw _privateConstructorUsedError;
  bool get isAutoSave => throw _privateConstructorUsedError;
  int get autoDeleteDays => throw _privateConstructorUsedError;

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingCopyWith<AppSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingCopyWith<$Res> {
  factory $AppSettingCopyWith(
          AppSetting value, $Res Function(AppSetting) then) =
      _$AppSettingCopyWithImpl<$Res, AppSetting>;
  @useResult
  $Res call(
      {bool isExitOnHome,
      int themeMode,
      int themeColor,
      int fontSize,
      double textHeight,
      bool isAutoSave,
      int autoDeleteDays});
}

/// @nodoc
class _$AppSettingCopyWithImpl<$Res, $Val extends AppSetting>
    implements $AppSettingCopyWith<$Res> {
  _$AppSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExitOnHome = null,
    Object? themeMode = null,
    Object? themeColor = null,
    Object? fontSize = null,
    Object? textHeight = null,
    Object? isAutoSave = null,
    Object? autoDeleteDays = null,
  }) {
    return _then(_value.copyWith(
      isExitOnHome: null == isExitOnHome
          ? _value.isExitOnHome
          : isExitOnHome // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as int,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int,
      textHeight: null == textHeight
          ? _value.textHeight
          : textHeight // ignore: cast_nullable_to_non_nullable
              as double,
      isAutoSave: null == isAutoSave
          ? _value.isAutoSave
          : isAutoSave // ignore: cast_nullable_to_non_nullable
              as bool,
      autoDeleteDays: null == autoDeleteDays
          ? _value.autoDeleteDays
          : autoDeleteDays // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingImplCopyWith<$Res>
    implements $AppSettingCopyWith<$Res> {
  factory _$$AppSettingImplCopyWith(
          _$AppSettingImpl value, $Res Function(_$AppSettingImpl) then) =
      __$$AppSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isExitOnHome,
      int themeMode,
      int themeColor,
      int fontSize,
      double textHeight,
      bool isAutoSave,
      int autoDeleteDays});
}

/// @nodoc
class __$$AppSettingImplCopyWithImpl<$Res>
    extends _$AppSettingCopyWithImpl<$Res, _$AppSettingImpl>
    implements _$$AppSettingImplCopyWith<$Res> {
  __$$AppSettingImplCopyWithImpl(
      _$AppSettingImpl _value, $Res Function(_$AppSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExitOnHome = null,
    Object? themeMode = null,
    Object? themeColor = null,
    Object? fontSize = null,
    Object? textHeight = null,
    Object? isAutoSave = null,
    Object? autoDeleteDays = null,
  }) {
    return _then(_$AppSettingImpl(
      isExitOnHome: null == isExitOnHome
          ? _value.isExitOnHome
          : isExitOnHome // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as int,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int,
      textHeight: null == textHeight
          ? _value.textHeight
          : textHeight // ignore: cast_nullable_to_non_nullable
              as double,
      isAutoSave: null == isAutoSave
          ? _value.isAutoSave
          : isAutoSave // ignore: cast_nullable_to_non_nullable
              as bool,
      autoDeleteDays: null == autoDeleteDays
          ? _value.autoDeleteDays
          : autoDeleteDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppSettingImpl implements _AppSetting {
  const _$AppSettingImpl(
      {this.isExitOnHome = true,
      this.themeMode = 0,
      this.themeColor = 0xFF2196F3,
      this.fontSize = 4,
      this.textHeight = 1.0,
      this.isAutoSave = false,
      this.autoDeleteDays = 0});

  @override
  @JsonKey()
  final bool isExitOnHome;
  @override
  @JsonKey()
  final int themeMode;
  @override
  @JsonKey()
  final int themeColor;
  @override
  @JsonKey()
  final int fontSize;
  @override
  @JsonKey()
  final double textHeight;
  @override
  @JsonKey()
  final bool isAutoSave;
  @override
  @JsonKey()
  final int autoDeleteDays;

  @override
  String toString() {
    return 'AppSetting(isExitOnHome: $isExitOnHome, themeMode: $themeMode, themeColor: $themeColor, fontSize: $fontSize, textHeight: $textHeight, isAutoSave: $isAutoSave, autoDeleteDays: $autoDeleteDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingImpl &&
            (identical(other.isExitOnHome, isExitOnHome) ||
                other.isExitOnHome == isExitOnHome) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
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
  int get hashCode => Object.hash(runtimeType, isExitOnHome, themeMode,
      themeColor, fontSize, textHeight, isAutoSave, autoDeleteDays);

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingImplCopyWith<_$AppSettingImpl> get copyWith =>
      __$$AppSettingImplCopyWithImpl<_$AppSettingImpl>(this, _$identity);
}

abstract class _AppSetting implements AppSetting {
  const factory _AppSetting(
      {final bool isExitOnHome,
      final int themeMode,
      final int themeColor,
      final int fontSize,
      final double textHeight,
      final bool isAutoSave,
      final int autoDeleteDays}) = _$AppSettingImpl;

  @override
  bool get isExitOnHome;
  @override
  int get themeMode;
  @override
  int get themeColor;
  @override
  int get fontSize;
  @override
  double get textHeight;
  @override
  bool get isAutoSave;
  @override
  int get autoDeleteDays;

  /// Create a copy of AppSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingImplCopyWith<_$AppSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
