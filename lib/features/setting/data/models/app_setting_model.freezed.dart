// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingModel {
  bool get isExitOnHome => throw _privateConstructorUsedError;
  int get themeColor => throw _privateConstructorUsedError;
  int get fontSize => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingModelCopyWith<AppSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingModelCopyWith<$Res> {
  factory $AppSettingModelCopyWith(
          AppSettingModel value, $Res Function(AppSettingModel) then) =
      _$AppSettingModelCopyWithImpl<$Res, AppSettingModel>;
  @useResult
  $Res call({bool isExitOnHome, int themeColor, int fontSize});
}

/// @nodoc
class _$AppSettingModelCopyWithImpl<$Res, $Val extends AppSettingModel>
    implements $AppSettingModelCopyWith<$Res> {
  _$AppSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExitOnHome = null,
    Object? themeColor = null,
    Object? fontSize = null,
  }) {
    return _then(_value.copyWith(
      isExitOnHome: null == isExitOnHome
          ? _value.isExitOnHome
          : isExitOnHome // ignore: cast_nullable_to_non_nullable
              as bool,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingModelImplCopyWith<$Res>
    implements $AppSettingModelCopyWith<$Res> {
  factory _$$AppSettingModelImplCopyWith(_$AppSettingModelImpl value,
          $Res Function(_$AppSettingModelImpl) then) =
      __$$AppSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isExitOnHome, int themeColor, int fontSize});
}

/// @nodoc
class __$$AppSettingModelImplCopyWithImpl<$Res>
    extends _$AppSettingModelCopyWithImpl<$Res, _$AppSettingModelImpl>
    implements _$$AppSettingModelImplCopyWith<$Res> {
  __$$AppSettingModelImplCopyWithImpl(
      _$AppSettingModelImpl _value, $Res Function(_$AppSettingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExitOnHome = null,
    Object? themeColor = null,
    Object? fontSize = null,
  }) {
    return _then(_$AppSettingModelImpl(
      isExitOnHome: null == isExitOnHome
          ? _value.isExitOnHome
          : isExitOnHome // ignore: cast_nullable_to_non_nullable
              as bool,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppSettingModelImpl implements _AppSettingModel {
  const _$AppSettingModelImpl(
      {this.isExitOnHome = true,
      this.themeColor = 0xFF2196F3,
      this.fontSize = 4});

  @override
  @JsonKey()
  final bool isExitOnHome;
  @override
  @JsonKey()
  final int themeColor;
  @override
  @JsonKey()
  final int fontSize;

  @override
  String toString() {
    return 'AppSettingModel(isExitOnHome: $isExitOnHome, themeColor: $themeColor, fontSize: $fontSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingModelImpl &&
            (identical(other.isExitOnHome, isExitOnHome) ||
                other.isExitOnHome == isExitOnHome) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isExitOnHome, themeColor, fontSize);

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingModelImplCopyWith<_$AppSettingModelImpl> get copyWith =>
      __$$AppSettingModelImplCopyWithImpl<_$AppSettingModelImpl>(
          this, _$identity);
}

abstract class _AppSettingModel implements AppSettingModel {
  const factory _AppSettingModel(
      {final bool isExitOnHome,
      final int themeColor,
      final int fontSize}) = _$AppSettingModelImpl;

  @override
  bool get isExitOnHome;
  @override
  int get themeColor;
  @override
  int get fontSize;

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingModelImplCopyWith<_$AppSettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
