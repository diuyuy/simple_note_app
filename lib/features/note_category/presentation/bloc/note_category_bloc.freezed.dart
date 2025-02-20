// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryLoaded,
    required TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)
        categoryCreated,
    required TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)
        categoryUpdated,
    required TResult Function(NoteCategory deletedNoteCategory) categoryDeleted,
    required TResult Function(int oldIndex, int newIndex) categoryReordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryLoaded,
    TResult? Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult? Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult? Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult? Function(int oldIndex, int newIndex)? categoryReordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryLoaded,
    TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult Function(int oldIndex, int newIndex)? categoryReordered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryLoaded value) categoryLoaded,
    required TResult Function(_CategoryCreated value) categoryCreated,
    required TResult Function(_CategoryUpdated value) categoryUpdated,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_CategoryReordered value) categoryReordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoaded value)? categoryLoaded,
    TResult? Function(_CategoryCreated value)? categoryCreated,
    TResult? Function(_CategoryUpdated value)? categoryUpdated,
    TResult? Function(_CategoryDeleted value)? categoryDeleted,
    TResult? Function(_CategoryReordered value)? categoryReordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoaded value)? categoryLoaded,
    TResult Function(_CategoryCreated value)? categoryCreated,
    TResult Function(_CategoryUpdated value)? categoryUpdated,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_CategoryReordered value)? categoryReordered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCategoryEventCopyWith<$Res> {
  factory $NoteCategoryEventCopyWith(
          NoteCategoryEvent value, $Res Function(NoteCategoryEvent) then) =
      _$NoteCategoryEventCopyWithImpl<$Res, NoteCategoryEvent>;
}

/// @nodoc
class _$NoteCategoryEventCopyWithImpl<$Res, $Val extends NoteCategoryEvent>
    implements $NoteCategoryEventCopyWith<$Res> {
  _$NoteCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoryLoadedImplCopyWith<$Res> {
  factory _$$CategoryLoadedImplCopyWith(_$CategoryLoadedImpl value,
          $Res Function(_$CategoryLoadedImpl) then) =
      __$$CategoryLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadedImplCopyWithImpl<$Res>
    extends _$NoteCategoryEventCopyWithImpl<$Res, _$CategoryLoadedImpl>
    implements _$$CategoryLoadedImplCopyWith<$Res> {
  __$$CategoryLoadedImplCopyWithImpl(
      _$CategoryLoadedImpl _value, $Res Function(_$CategoryLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryLoadedImpl implements _CategoryLoaded {
  const _$CategoryLoadedImpl();

  @override
  String toString() {
    return 'NoteCategoryEvent.categoryLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryLoaded,
    required TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)
        categoryCreated,
    required TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)
        categoryUpdated,
    required TResult Function(NoteCategory deletedNoteCategory) categoryDeleted,
    required TResult Function(int oldIndex, int newIndex) categoryReordered,
  }) {
    return categoryLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryLoaded,
    TResult? Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult? Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult? Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult? Function(int oldIndex, int newIndex)? categoryReordered,
  }) {
    return categoryLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryLoaded,
    TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult Function(int oldIndex, int newIndex)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryLoaded != null) {
      return categoryLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryLoaded value) categoryLoaded,
    required TResult Function(_CategoryCreated value) categoryCreated,
    required TResult Function(_CategoryUpdated value) categoryUpdated,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_CategoryReordered value) categoryReordered,
  }) {
    return categoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoaded value)? categoryLoaded,
    TResult? Function(_CategoryCreated value)? categoryCreated,
    TResult? Function(_CategoryUpdated value)? categoryUpdated,
    TResult? Function(_CategoryDeleted value)? categoryDeleted,
    TResult? Function(_CategoryReordered value)? categoryReordered,
  }) {
    return categoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoaded value)? categoryLoaded,
    TResult Function(_CategoryCreated value)? categoryCreated,
    TResult Function(_CategoryUpdated value)? categoryUpdated,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_CategoryReordered value)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryLoaded != null) {
      return categoryLoaded(this);
    }
    return orElse();
  }
}

abstract class _CategoryLoaded implements NoteCategoryEvent {
  const factory _CategoryLoaded() = _$CategoryLoadedImpl;
}

/// @nodoc
abstract class _$$CategoryCreatedImplCopyWith<$Res> {
  factory _$$CategoryCreatedImplCopyWith(_$CategoryCreatedImpl value,
          $Res Function(_$CategoryCreatedImpl) then) =
      __$$CategoryCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String categoryName,
      int iconCode,
      double categoryColorA,
      double categoryColorR,
      double categoryColorG,
      double categoryColorB});
}

/// @nodoc
class __$$CategoryCreatedImplCopyWithImpl<$Res>
    extends _$NoteCategoryEventCopyWithImpl<$Res, _$CategoryCreatedImpl>
    implements _$$CategoryCreatedImplCopyWith<$Res> {
  __$$CategoryCreatedImplCopyWithImpl(
      _$CategoryCreatedImpl _value, $Res Function(_$CategoryCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? iconCode = null,
    Object? categoryColorA = null,
    Object? categoryColorR = null,
    Object? categoryColorG = null,
    Object? categoryColorB = null,
  }) {
    return _then(_$CategoryCreatedImpl(
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

class _$CategoryCreatedImpl implements _CategoryCreated {
  const _$CategoryCreatedImpl(
      {required this.categoryName,
      required this.iconCode,
      required this.categoryColorA,
      required this.categoryColorR,
      required this.categoryColorG,
      required this.categoryColorB});

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
    return 'NoteCategoryEvent.categoryCreated(categoryName: $categoryName, iconCode: $iconCode, categoryColorA: $categoryColorA, categoryColorR: $categoryColorR, categoryColorG: $categoryColorG, categoryColorB: $categoryColorB)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCreatedImpl &&
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
  int get hashCode => Object.hash(runtimeType, categoryName, iconCode,
      categoryColorA, categoryColorR, categoryColorG, categoryColorB);

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCreatedImplCopyWith<_$CategoryCreatedImpl> get copyWith =>
      __$$CategoryCreatedImplCopyWithImpl<_$CategoryCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryLoaded,
    required TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)
        categoryCreated,
    required TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)
        categoryUpdated,
    required TResult Function(NoteCategory deletedNoteCategory) categoryDeleted,
    required TResult Function(int oldIndex, int newIndex) categoryReordered,
  }) {
    return categoryCreated(categoryName, iconCode, categoryColorA,
        categoryColorR, categoryColorG, categoryColorB);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryLoaded,
    TResult? Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult? Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult? Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult? Function(int oldIndex, int newIndex)? categoryReordered,
  }) {
    return categoryCreated?.call(categoryName, iconCode, categoryColorA,
        categoryColorR, categoryColorG, categoryColorB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryLoaded,
    TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult Function(int oldIndex, int newIndex)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryCreated != null) {
      return categoryCreated(categoryName, iconCode, categoryColorA,
          categoryColorR, categoryColorG, categoryColorB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryLoaded value) categoryLoaded,
    required TResult Function(_CategoryCreated value) categoryCreated,
    required TResult Function(_CategoryUpdated value) categoryUpdated,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_CategoryReordered value) categoryReordered,
  }) {
    return categoryCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoaded value)? categoryLoaded,
    TResult? Function(_CategoryCreated value)? categoryCreated,
    TResult? Function(_CategoryUpdated value)? categoryUpdated,
    TResult? Function(_CategoryDeleted value)? categoryDeleted,
    TResult? Function(_CategoryReordered value)? categoryReordered,
  }) {
    return categoryCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoaded value)? categoryLoaded,
    TResult Function(_CategoryCreated value)? categoryCreated,
    TResult Function(_CategoryUpdated value)? categoryUpdated,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_CategoryReordered value)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryCreated != null) {
      return categoryCreated(this);
    }
    return orElse();
  }
}

abstract class _CategoryCreated implements NoteCategoryEvent {
  const factory _CategoryCreated(
      {required final String categoryName,
      required final int iconCode,
      required final double categoryColorA,
      required final double categoryColorR,
      required final double categoryColorG,
      required final double categoryColorB}) = _$CategoryCreatedImpl;

  String get categoryName;
  int get iconCode;
  double get categoryColorA;
  double get categoryColorR;
  double get categoryColorG;
  double get categoryColorB;

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryCreatedImplCopyWith<_$CategoryCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryUpdatedImplCopyWith<$Res> {
  factory _$$CategoryUpdatedImplCopyWith(_$CategoryUpdatedImpl value,
          $Res Function(_$CategoryUpdatedImpl) then) =
      __$$CategoryUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String? categoryName,
      int? iconCode,
      double? categoryColorA,
      double? categoryColorR,
      double? categoryColorG,
      double? categoryColorB});
}

/// @nodoc
class __$$CategoryUpdatedImplCopyWithImpl<$Res>
    extends _$NoteCategoryEventCopyWithImpl<$Res, _$CategoryUpdatedImpl>
    implements _$$CategoryUpdatedImplCopyWith<$Res> {
  __$$CategoryUpdatedImplCopyWithImpl(
      _$CategoryUpdatedImpl _value, $Res Function(_$CategoryUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = freezed,
    Object? iconCode = freezed,
    Object? categoryColorA = freezed,
    Object? categoryColorR = freezed,
    Object? categoryColorG = freezed,
    Object? categoryColorB = freezed,
  }) {
    return _then(_$CategoryUpdatedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      iconCode: freezed == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryColorA: freezed == categoryColorA
          ? _value.categoryColorA
          : categoryColorA // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryColorR: freezed == categoryColorR
          ? _value.categoryColorR
          : categoryColorR // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryColorG: freezed == categoryColorG
          ? _value.categoryColorG
          : categoryColorG // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryColorB: freezed == categoryColorB
          ? _value.categoryColorB
          : categoryColorB // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$CategoryUpdatedImpl implements _CategoryUpdated {
  const _$CategoryUpdatedImpl(
      {required this.id,
      this.categoryName,
      this.iconCode,
      this.categoryColorA,
      this.categoryColorR,
      this.categoryColorG,
      this.categoryColorB});

  @override
  final String id;
  @override
  final String? categoryName;
  @override
  final int? iconCode;
  @override
  final double? categoryColorA;
  @override
  final double? categoryColorR;
  @override
  final double? categoryColorG;
  @override
  final double? categoryColorB;

  @override
  String toString() {
    return 'NoteCategoryEvent.categoryUpdated(id: $id, categoryName: $categoryName, iconCode: $iconCode, categoryColorA: $categoryColorA, categoryColorR: $categoryColorR, categoryColorG: $categoryColorG, categoryColorB: $categoryColorB)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryUpdatedImpl &&
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

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryUpdatedImplCopyWith<_$CategoryUpdatedImpl> get copyWith =>
      __$$CategoryUpdatedImplCopyWithImpl<_$CategoryUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryLoaded,
    required TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)
        categoryCreated,
    required TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)
        categoryUpdated,
    required TResult Function(NoteCategory deletedNoteCategory) categoryDeleted,
    required TResult Function(int oldIndex, int newIndex) categoryReordered,
  }) {
    return categoryUpdated(id, categoryName, iconCode, categoryColorA,
        categoryColorR, categoryColorG, categoryColorB);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryLoaded,
    TResult? Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult? Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult? Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult? Function(int oldIndex, int newIndex)? categoryReordered,
  }) {
    return categoryUpdated?.call(id, categoryName, iconCode, categoryColorA,
        categoryColorR, categoryColorG, categoryColorB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryLoaded,
    TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult Function(int oldIndex, int newIndex)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryUpdated != null) {
      return categoryUpdated(id, categoryName, iconCode, categoryColorA,
          categoryColorR, categoryColorG, categoryColorB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryLoaded value) categoryLoaded,
    required TResult Function(_CategoryCreated value) categoryCreated,
    required TResult Function(_CategoryUpdated value) categoryUpdated,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_CategoryReordered value) categoryReordered,
  }) {
    return categoryUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoaded value)? categoryLoaded,
    TResult? Function(_CategoryCreated value)? categoryCreated,
    TResult? Function(_CategoryUpdated value)? categoryUpdated,
    TResult? Function(_CategoryDeleted value)? categoryDeleted,
    TResult? Function(_CategoryReordered value)? categoryReordered,
  }) {
    return categoryUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoaded value)? categoryLoaded,
    TResult Function(_CategoryCreated value)? categoryCreated,
    TResult Function(_CategoryUpdated value)? categoryUpdated,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_CategoryReordered value)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryUpdated != null) {
      return categoryUpdated(this);
    }
    return orElse();
  }
}

abstract class _CategoryUpdated implements NoteCategoryEvent {
  const factory _CategoryUpdated(
      {required final String id,
      final String? categoryName,
      final int? iconCode,
      final double? categoryColorA,
      final double? categoryColorR,
      final double? categoryColorG,
      final double? categoryColorB}) = _$CategoryUpdatedImpl;

  String get id;
  String? get categoryName;
  int? get iconCode;
  double? get categoryColorA;
  double? get categoryColorR;
  double? get categoryColorG;
  double? get categoryColorB;

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryUpdatedImplCopyWith<_$CategoryUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryDeletedImplCopyWith<$Res> {
  factory _$$CategoryDeletedImplCopyWith(_$CategoryDeletedImpl value,
          $Res Function(_$CategoryDeletedImpl) then) =
      __$$CategoryDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteCategory deletedNoteCategory});

  $NoteCategoryCopyWith<$Res> get deletedNoteCategory;
}

/// @nodoc
class __$$CategoryDeletedImplCopyWithImpl<$Res>
    extends _$NoteCategoryEventCopyWithImpl<$Res, _$CategoryDeletedImpl>
    implements _$$CategoryDeletedImplCopyWith<$Res> {
  __$$CategoryDeletedImplCopyWithImpl(
      _$CategoryDeletedImpl _value, $Res Function(_$CategoryDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedNoteCategory = null,
  }) {
    return _then(_$CategoryDeletedImpl(
      deletedNoteCategory: null == deletedNoteCategory
          ? _value.deletedNoteCategory
          : deletedNoteCategory // ignore: cast_nullable_to_non_nullable
              as NoteCategory,
    ));
  }

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteCategoryCopyWith<$Res> get deletedNoteCategory {
    return $NoteCategoryCopyWith<$Res>(_value.deletedNoteCategory, (value) {
      return _then(_value.copyWith(deletedNoteCategory: value));
    });
  }
}

/// @nodoc

class _$CategoryDeletedImpl implements _CategoryDeleted {
  const _$CategoryDeletedImpl({required this.deletedNoteCategory});

  @override
  final NoteCategory deletedNoteCategory;

  @override
  String toString() {
    return 'NoteCategoryEvent.categoryDeleted(deletedNoteCategory: $deletedNoteCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDeletedImpl &&
            (identical(other.deletedNoteCategory, deletedNoteCategory) ||
                other.deletedNoteCategory == deletedNoteCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedNoteCategory);

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDeletedImplCopyWith<_$CategoryDeletedImpl> get copyWith =>
      __$$CategoryDeletedImplCopyWithImpl<_$CategoryDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryLoaded,
    required TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)
        categoryCreated,
    required TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)
        categoryUpdated,
    required TResult Function(NoteCategory deletedNoteCategory) categoryDeleted,
    required TResult Function(int oldIndex, int newIndex) categoryReordered,
  }) {
    return categoryDeleted(deletedNoteCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryLoaded,
    TResult? Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult? Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult? Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult? Function(int oldIndex, int newIndex)? categoryReordered,
  }) {
    return categoryDeleted?.call(deletedNoteCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryLoaded,
    TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult Function(int oldIndex, int newIndex)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryDeleted != null) {
      return categoryDeleted(deletedNoteCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryLoaded value) categoryLoaded,
    required TResult Function(_CategoryCreated value) categoryCreated,
    required TResult Function(_CategoryUpdated value) categoryUpdated,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_CategoryReordered value) categoryReordered,
  }) {
    return categoryDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoaded value)? categoryLoaded,
    TResult? Function(_CategoryCreated value)? categoryCreated,
    TResult? Function(_CategoryUpdated value)? categoryUpdated,
    TResult? Function(_CategoryDeleted value)? categoryDeleted,
    TResult? Function(_CategoryReordered value)? categoryReordered,
  }) {
    return categoryDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoaded value)? categoryLoaded,
    TResult Function(_CategoryCreated value)? categoryCreated,
    TResult Function(_CategoryUpdated value)? categoryUpdated,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_CategoryReordered value)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryDeleted != null) {
      return categoryDeleted(this);
    }
    return orElse();
  }
}

abstract class _CategoryDeleted implements NoteCategoryEvent {
  const factory _CategoryDeleted(
          {required final NoteCategory deletedNoteCategory}) =
      _$CategoryDeletedImpl;

  NoteCategory get deletedNoteCategory;

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDeletedImplCopyWith<_$CategoryDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryReorderedImplCopyWith<$Res> {
  factory _$$CategoryReorderedImplCopyWith(_$CategoryReorderedImpl value,
          $Res Function(_$CategoryReorderedImpl) then) =
      __$$CategoryReorderedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$CategoryReorderedImplCopyWithImpl<$Res>
    extends _$NoteCategoryEventCopyWithImpl<$Res, _$CategoryReorderedImpl>
    implements _$$CategoryReorderedImplCopyWith<$Res> {
  __$$CategoryReorderedImplCopyWithImpl(_$CategoryReorderedImpl _value,
      $Res Function(_$CategoryReorderedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$CategoryReorderedImpl(
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CategoryReorderedImpl implements _CategoryReordered {
  const _$CategoryReorderedImpl(
      {required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'NoteCategoryEvent.categoryReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryReorderedImpl &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryReorderedImplCopyWith<_$CategoryReorderedImpl> get copyWith =>
      __$$CategoryReorderedImplCopyWithImpl<_$CategoryReorderedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryLoaded,
    required TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)
        categoryCreated,
    required TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)
        categoryUpdated,
    required TResult Function(NoteCategory deletedNoteCategory) categoryDeleted,
    required TResult Function(int oldIndex, int newIndex) categoryReordered,
  }) {
    return categoryReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryLoaded,
    TResult? Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult? Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult? Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult? Function(int oldIndex, int newIndex)? categoryReordered,
  }) {
    return categoryReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryLoaded,
    TResult Function(
            String categoryName,
            int iconCode,
            double categoryColorA,
            double categoryColorR,
            double categoryColorG,
            double categoryColorB)?
        categoryCreated,
    TResult Function(
            String id,
            String? categoryName,
            int? iconCode,
            double? categoryColorA,
            double? categoryColorR,
            double? categoryColorG,
            double? categoryColorB)?
        categoryUpdated,
    TResult Function(NoteCategory deletedNoteCategory)? categoryDeleted,
    TResult Function(int oldIndex, int newIndex)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryReordered != null) {
      return categoryReordered(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryLoaded value) categoryLoaded,
    required TResult Function(_CategoryCreated value) categoryCreated,
    required TResult Function(_CategoryUpdated value) categoryUpdated,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_CategoryReordered value) categoryReordered,
  }) {
    return categoryReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryLoaded value)? categoryLoaded,
    TResult? Function(_CategoryCreated value)? categoryCreated,
    TResult? Function(_CategoryUpdated value)? categoryUpdated,
    TResult? Function(_CategoryDeleted value)? categoryDeleted,
    TResult? Function(_CategoryReordered value)? categoryReordered,
  }) {
    return categoryReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryLoaded value)? categoryLoaded,
    TResult Function(_CategoryCreated value)? categoryCreated,
    TResult Function(_CategoryUpdated value)? categoryUpdated,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_CategoryReordered value)? categoryReordered,
    required TResult orElse(),
  }) {
    if (categoryReordered != null) {
      return categoryReordered(this);
    }
    return orElse();
  }
}

abstract class _CategoryReordered implements NoteCategoryEvent {
  const factory _CategoryReordered(
      {required final int oldIndex,
      required final int newIndex}) = _$CategoryReorderedImpl;

  int get oldIndex;
  int get newIndex;

  /// Create a copy of NoteCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryReorderedImplCopyWith<_$CategoryReorderedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteCategoryState {
  List<NoteCategory> get categories => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteCategory> categories) initial,
    required TResult Function(List<NoteCategory> categories) loadSuccess,
    required TResult Function(
            List<NoteCategory> categories, String errorMessage)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteCategory> categories)? initial,
    TResult? Function(List<NoteCategory> categories)? loadSuccess,
    TResult? Function(List<NoteCategory> categories, String errorMessage)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteCategory> categories)? initial,
    TResult Function(List<NoteCategory> categories)? loadSuccess,
    TResult Function(List<NoteCategory> categories, String errorMessage)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoteCategoryLoadSuccess value) loadSuccess,
    required TResult Function(_NoteCategoryLoadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoteCategoryLoadSuccess value)? loadSuccess,
    TResult? Function(_NoteCategoryLoadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoteCategoryLoadSuccess value)? loadSuccess,
    TResult Function(_NoteCategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteCategoryStateCopyWith<NoteCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCategoryStateCopyWith<$Res> {
  factory $NoteCategoryStateCopyWith(
          NoteCategoryState value, $Res Function(NoteCategoryState) then) =
      _$NoteCategoryStateCopyWithImpl<$Res, NoteCategoryState>;
  @useResult
  $Res call({List<NoteCategory> categories});
}

/// @nodoc
class _$NoteCategoryStateCopyWithImpl<$Res, $Val extends NoteCategoryState>
    implements $NoteCategoryStateCopyWith<$Res> {
  _$NoteCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NoteCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NoteCategoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteCategory> categories});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NoteCategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$InitialImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NoteCategory>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<NoteCategory> categories})
      : _categories = categories;

  final List<NoteCategory> _categories;
  @override
  List<NoteCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'NoteCategoryState.initial(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteCategory> categories) initial,
    required TResult Function(List<NoteCategory> categories) loadSuccess,
    required TResult Function(
            List<NoteCategory> categories, String errorMessage)
        failure,
  }) {
    return initial(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteCategory> categories)? initial,
    TResult? Function(List<NoteCategory> categories)? loadSuccess,
    TResult? Function(List<NoteCategory> categories, String errorMessage)?
        failure,
  }) {
    return initial?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteCategory> categories)? initial,
    TResult Function(List<NoteCategory> categories)? loadSuccess,
    TResult Function(List<NoteCategory> categories, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoteCategoryLoadSuccess value) loadSuccess,
    required TResult Function(_NoteCategoryLoadFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoteCategoryLoadSuccess value)? loadSuccess,
    TResult? Function(_NoteCategoryLoadFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoteCategoryLoadSuccess value)? loadSuccess,
    TResult Function(_NoteCategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteCategoryState {
  const factory _Initial({required final List<NoteCategory> categories}) =
      _$InitialImpl;

  @override
  List<NoteCategory> get categories;

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteCategoryLoadSuccessImplCopyWith<$Res>
    implements $NoteCategoryStateCopyWith<$Res> {
  factory _$$NoteCategoryLoadSuccessImplCopyWith(
          _$NoteCategoryLoadSuccessImpl value,
          $Res Function(_$NoteCategoryLoadSuccessImpl) then) =
      __$$NoteCategoryLoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteCategory> categories});
}

/// @nodoc
class __$$NoteCategoryLoadSuccessImplCopyWithImpl<$Res>
    extends _$NoteCategoryStateCopyWithImpl<$Res, _$NoteCategoryLoadSuccessImpl>
    implements _$$NoteCategoryLoadSuccessImplCopyWith<$Res> {
  __$$NoteCategoryLoadSuccessImplCopyWithImpl(
      _$NoteCategoryLoadSuccessImpl _value,
      $Res Function(_$NoteCategoryLoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$NoteCategoryLoadSuccessImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NoteCategory>,
    ));
  }
}

/// @nodoc

class _$NoteCategoryLoadSuccessImpl implements _NoteCategoryLoadSuccess {
  const _$NoteCategoryLoadSuccessImpl(
      {required final List<NoteCategory> categories})
      : _categories = categories;

  final List<NoteCategory> _categories;
  @override
  List<NoteCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'NoteCategoryState.loadSuccess(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteCategoryLoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteCategoryLoadSuccessImplCopyWith<_$NoteCategoryLoadSuccessImpl>
      get copyWith => __$$NoteCategoryLoadSuccessImplCopyWithImpl<
          _$NoteCategoryLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteCategory> categories) initial,
    required TResult Function(List<NoteCategory> categories) loadSuccess,
    required TResult Function(
            List<NoteCategory> categories, String errorMessage)
        failure,
  }) {
    return loadSuccess(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteCategory> categories)? initial,
    TResult? Function(List<NoteCategory> categories)? loadSuccess,
    TResult? Function(List<NoteCategory> categories, String errorMessage)?
        failure,
  }) {
    return loadSuccess?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteCategory> categories)? initial,
    TResult Function(List<NoteCategory> categories)? loadSuccess,
    TResult Function(List<NoteCategory> categories, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoteCategoryLoadSuccess value) loadSuccess,
    required TResult Function(_NoteCategoryLoadFailure value) failure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoteCategoryLoadSuccess value)? loadSuccess,
    TResult? Function(_NoteCategoryLoadFailure value)? failure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoteCategoryLoadSuccess value)? loadSuccess,
    TResult Function(_NoteCategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _NoteCategoryLoadSuccess implements NoteCategoryState {
  const factory _NoteCategoryLoadSuccess(
          {required final List<NoteCategory> categories}) =
      _$NoteCategoryLoadSuccessImpl;

  @override
  List<NoteCategory> get categories;

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteCategoryLoadSuccessImplCopyWith<_$NoteCategoryLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteCategoryLoadFailureImplCopyWith<$Res>
    implements $NoteCategoryStateCopyWith<$Res> {
  factory _$$NoteCategoryLoadFailureImplCopyWith(
          _$NoteCategoryLoadFailureImpl value,
          $Res Function(_$NoteCategoryLoadFailureImpl) then) =
      __$$NoteCategoryLoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteCategory> categories, String errorMessage});
}

/// @nodoc
class __$$NoteCategoryLoadFailureImplCopyWithImpl<$Res>
    extends _$NoteCategoryStateCopyWithImpl<$Res, _$NoteCategoryLoadFailureImpl>
    implements _$$NoteCategoryLoadFailureImplCopyWith<$Res> {
  __$$NoteCategoryLoadFailureImplCopyWithImpl(
      _$NoteCategoryLoadFailureImpl _value,
      $Res Function(_$NoteCategoryLoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? errorMessage = null,
  }) {
    return _then(_$NoteCategoryLoadFailureImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NoteCategory>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteCategoryLoadFailureImpl implements _NoteCategoryLoadFailure {
  const _$NoteCategoryLoadFailureImpl(
      {required final List<NoteCategory> categories,
      required this.errorMessage})
      : _categories = categories;

  final List<NoteCategory> _categories;
  @override
  List<NoteCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NoteCategoryState.failure(categories: $categories, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteCategoryLoadFailureImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), errorMessage);

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteCategoryLoadFailureImplCopyWith<_$NoteCategoryLoadFailureImpl>
      get copyWith => __$$NoteCategoryLoadFailureImplCopyWithImpl<
          _$NoteCategoryLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteCategory> categories) initial,
    required TResult Function(List<NoteCategory> categories) loadSuccess,
    required TResult Function(
            List<NoteCategory> categories, String errorMessage)
        failure,
  }) {
    return failure(categories, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteCategory> categories)? initial,
    TResult? Function(List<NoteCategory> categories)? loadSuccess,
    TResult? Function(List<NoteCategory> categories, String errorMessage)?
        failure,
  }) {
    return failure?.call(categories, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteCategory> categories)? initial,
    TResult Function(List<NoteCategory> categories)? loadSuccess,
    TResult Function(List<NoteCategory> categories, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(categories, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoteCategoryLoadSuccess value) loadSuccess,
    required TResult Function(_NoteCategoryLoadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoteCategoryLoadSuccess value)? loadSuccess,
    TResult? Function(_NoteCategoryLoadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoteCategoryLoadSuccess value)? loadSuccess,
    TResult Function(_NoteCategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NoteCategoryLoadFailure implements NoteCategoryState {
  const factory _NoteCategoryLoadFailure(
      {required final List<NoteCategory> categories,
      required final String errorMessage}) = _$NoteCategoryLoadFailureImpl;

  @override
  List<NoteCategory> get categories;
  String get errorMessage;

  /// Create a copy of NoteCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteCategoryLoadFailureImplCopyWith<_$NoteCategoryLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
