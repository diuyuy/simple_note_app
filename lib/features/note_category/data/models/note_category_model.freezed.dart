// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  int get iconCode => throw _privateConstructorUsedError;
  double get categoryColorA => throw _privateConstructorUsedError;
  double get categoryColorR => throw _privateConstructorUsedError;
  double get categoryColorG => throw _privateConstructorUsedError;
  double get categoryColorB => throw _privateConstructorUsedError;

  /// Create a copy of NoteCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteCategoryModelCopyWith<NoteCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCategoryModelCopyWith<$Res> {
  factory $NoteCategoryModelCopyWith(
          NoteCategoryModel value, $Res Function(NoteCategoryModel) then) =
      _$NoteCategoryModelCopyWithImpl<$Res, NoteCategoryModel>;
  @useResult
  $Res call(
      {String id,
      String categoryName,
      int iconCode,
      double categoryColorA,
      double categoryColorR,
      double categoryColorG,
      double categoryColorB});
}

/// @nodoc
class _$NoteCategoryModelCopyWithImpl<$Res, $Val extends NoteCategoryModel>
    implements $NoteCategoryModelCopyWith<$Res> {
  _$NoteCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? iconCode = null,
    Object? categoryColorA = null,
    Object? categoryColorR = null,
    Object? categoryColorG = null,
    Object? categoryColorB = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as int,
      categoryColorA: null == categoryColorA
          ? _value.categoryColorA
          : categoryColorA // ignore: cast_nullable_to_non_nullable
              as double,
      categoryColorR: null == categoryColorR
          ? _value.categoryColorR
          : categoryColorR // ignore: cast_nullable_to_non_nullable
              as double,
      categoryColorG: null == categoryColorG
          ? _value.categoryColorG
          : categoryColorG // ignore: cast_nullable_to_non_nullable
              as double,
      categoryColorB: null == categoryColorB
          ? _value.categoryColorB
          : categoryColorB // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteCategoryModelImplCopyWith<$Res>
    implements $NoteCategoryModelCopyWith<$Res> {
  factory _$$NoteCategoryModelImplCopyWith(_$NoteCategoryModelImpl value,
          $Res Function(_$NoteCategoryModelImpl) then) =
      __$$NoteCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String categoryName,
      int iconCode,
      double categoryColorA,
      double categoryColorR,
      double categoryColorG,
      double categoryColorB});
}

/// @nodoc
class __$$NoteCategoryModelImplCopyWithImpl<$Res>
    extends _$NoteCategoryModelCopyWithImpl<$Res, _$NoteCategoryModelImpl>
    implements _$$NoteCategoryModelImplCopyWith<$Res> {
  __$$NoteCategoryModelImplCopyWithImpl(_$NoteCategoryModelImpl _value,
      $Res Function(_$NoteCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? iconCode = null,
    Object? categoryColorA = null,
    Object? categoryColorR = null,
    Object? categoryColorG = null,
    Object? categoryColorB = null,
  }) {
    return _then(_$NoteCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as int,
      categoryColorA: null == categoryColorA
          ? _value.categoryColorA
          : categoryColorA // ignore: cast_nullable_to_non_nullable
              as double,
      categoryColorR: null == categoryColorR
          ? _value.categoryColorR
          : categoryColorR // ignore: cast_nullable_to_non_nullable
              as double,
      categoryColorG: null == categoryColorG
          ? _value.categoryColorG
          : categoryColorG // ignore: cast_nullable_to_non_nullable
              as double,
      categoryColorB: null == categoryColorB
          ? _value.categoryColorB
          : categoryColorB // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$NoteCategoryModelImpl implements _NoteCategoryModel {
  const _$NoteCategoryModelImpl(
      {required this.id,
      required this.categoryName,
      required this.iconCode,
      required this.categoryColorA,
      required this.categoryColorR,
      required this.categoryColorG,
      required this.categoryColorB});

  @override
  final String id;
  @override
  final String categoryName;
  @override
  final int iconCode;
  @override
  final double categoryColorA;
  @override
  final double categoryColorR;
  @override
  final double categoryColorG;
  @override
  final double categoryColorB;

  @override
  String toString() {
    return 'NoteCategoryModel(id: $id, categoryName: $categoryName, iconCode: $iconCode, categoryColorA: $categoryColorA, categoryColorR: $categoryColorR, categoryColorG: $categoryColorG, categoryColorB: $categoryColorB)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.iconCode, iconCode) ||
                other.iconCode == iconCode) &&
            (identical(other.categoryColorA, categoryColorA) ||
                other.categoryColorA == categoryColorA) &&
            (identical(other.categoryColorR, categoryColorR) ||
                other.categoryColorR == categoryColorR) &&
            (identical(other.categoryColorG, categoryColorG) ||
                other.categoryColorG == categoryColorG) &&
            (identical(other.categoryColorB, categoryColorB) ||
                other.categoryColorB == categoryColorB));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, categoryName, iconCode,
      categoryColorA, categoryColorR, categoryColorG, categoryColorB);

  /// Create a copy of NoteCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteCategoryModelImplCopyWith<_$NoteCategoryModelImpl> get copyWith =>
      __$$NoteCategoryModelImplCopyWithImpl<_$NoteCategoryModelImpl>(
          this, _$identity);
}

abstract class _NoteCategoryModel implements NoteCategoryModel {
  const factory _NoteCategoryModel(
      {required final String id,
      required final String categoryName,
      required final int iconCode,
      required final double categoryColorA,
      required final double categoryColorR,
      required final double categoryColorG,
      required final double categoryColorB}) = _$NoteCategoryModelImpl;

  @override
  String get id;
  @override
  String get categoryName;
  @override
  int get iconCode;
  @override
  double get categoryColorA;
  @override
  double get categoryColorR;
  @override
  double get categoryColorG;
  @override
  double get categoryColorB;

  /// Create a copy of NoteCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteCategoryModelImplCopyWith<_$NoteCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
