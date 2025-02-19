// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteCategory {
  String get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  int get iconCode => throw _privateConstructorUsedError;
  int get categoryColor => throw _privateConstructorUsedError;

  /// Create a copy of NoteCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteCategoryCopyWith<NoteCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCategoryCopyWith<$Res> {
  factory $NoteCategoryCopyWith(
          NoteCategory value, $Res Function(NoteCategory) then) =
      _$NoteCategoryCopyWithImpl<$Res, NoteCategory>;
  @useResult
  $Res call({String id, String categoryName, int iconCode, int categoryColor});
}

/// @nodoc
class _$NoteCategoryCopyWithImpl<$Res, $Val extends NoteCategory>
    implements $NoteCategoryCopyWith<$Res> {
  _$NoteCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? iconCode = null,
    Object? categoryColor = null,
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
      categoryColor: null == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteCategoryImplCopyWith<$Res>
    implements $NoteCategoryCopyWith<$Res> {
  factory _$$NoteCategoryImplCopyWith(
          _$NoteCategoryImpl value, $Res Function(_$NoteCategoryImpl) then) =
      __$$NoteCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String categoryName, int iconCode, int categoryColor});
}

/// @nodoc
class __$$NoteCategoryImplCopyWithImpl<$Res>
    extends _$NoteCategoryCopyWithImpl<$Res, _$NoteCategoryImpl>
    implements _$$NoteCategoryImplCopyWith<$Res> {
  __$$NoteCategoryImplCopyWithImpl(
      _$NoteCategoryImpl _value, $Res Function(_$NoteCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? iconCode = null,
    Object? categoryColor = null,
  }) {
    return _then(_$NoteCategoryImpl(
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
      categoryColor: null == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NoteCategoryImpl implements _NoteCategory {
  const _$NoteCategoryImpl(
      {required this.id,
      required this.categoryName,
      required this.iconCode,
      required this.categoryColor});

  @override
  final String id;
  @override
  final String categoryName;
  @override
  final int iconCode;
  @override
  final int categoryColor;

  @override
  String toString() {
    return 'NoteCategory(id: $id, categoryName: $categoryName, iconCode: $iconCode, categoryColor: $categoryColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.iconCode, iconCode) ||
                other.iconCode == iconCode) &&
            (identical(other.categoryColor, categoryColor) ||
                other.categoryColor == categoryColor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, categoryName, iconCode, categoryColor);

  /// Create a copy of NoteCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteCategoryImplCopyWith<_$NoteCategoryImpl> get copyWith =>
      __$$NoteCategoryImplCopyWithImpl<_$NoteCategoryImpl>(this, _$identity);
}

abstract class _NoteCategory implements NoteCategory {
  const factory _NoteCategory(
      {required final String id,
      required final String categoryName,
      required final int iconCode,
      required final int categoryColor}) = _$NoteCategoryImpl;

  @override
  String get id;
  @override
  String get categoryName;
  @override
  int get iconCode;
  @override
  int get categoryColor;

  /// Create a copy of NoteCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteCategoryImplCopyWith<_$NoteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
