// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waste_basket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WasteBasketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String id) restored,
    required TResult Function(String id) deletePermanently,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String id)? restored,
    TResult? Function(String id)? deletePermanently,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String id)? restored,
    TResult Function(String id)? deletePermanently,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Restored value) restored,
    required TResult Function(_DeletePermanently value) deletePermanently,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_DeletePermanently value)? deletePermanently,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Restored value)? restored,
    TResult Function(_DeletePermanently value)? deletePermanently,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WasteBasketEventCopyWith<$Res> {
  factory $WasteBasketEventCopyWith(
          WasteBasketEvent value, $Res Function(WasteBasketEvent) then) =
      _$WasteBasketEventCopyWithImpl<$Res, WasteBasketEvent>;
}

/// @nodoc
class _$WasteBasketEventCopyWithImpl<$Res, $Val extends WasteBasketEvent>
    implements $WasteBasketEventCopyWith<$Res> {
  _$WasteBasketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$WasteBasketEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'WasteBasketEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String id) restored,
    required TResult Function(String id) deletePermanently,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String id)? restored,
    TResult? Function(String id)? deletePermanently,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String id)? restored,
    TResult Function(String id)? deletePermanently,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Restored value) restored,
    required TResult Function(_DeletePermanently value) deletePermanently,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_DeletePermanently value)? deletePermanently,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Restored value)? restored,
    TResult Function(_DeletePermanently value)? deletePermanently,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements WasteBasketEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$RestoredImplCopyWith<$Res> {
  factory _$$RestoredImplCopyWith(
          _$RestoredImpl value, $Res Function(_$RestoredImpl) then) =
      __$$RestoredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RestoredImplCopyWithImpl<$Res>
    extends _$WasteBasketEventCopyWithImpl<$Res, _$RestoredImpl>
    implements _$$RestoredImplCopyWith<$Res> {
  __$$RestoredImplCopyWithImpl(
      _$RestoredImpl _value, $Res Function(_$RestoredImpl) _then)
      : super(_value, _then);

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RestoredImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestoredImpl implements _Restored {
  const _$RestoredImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'WasteBasketEvent.restored(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestoredImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestoredImplCopyWith<_$RestoredImpl> get copyWith =>
      __$$RestoredImplCopyWithImpl<_$RestoredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String id) restored,
    required TResult Function(String id) deletePermanently,
  }) {
    return restored(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String id)? restored,
    TResult? Function(String id)? deletePermanently,
  }) {
    return restored?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String id)? restored,
    TResult Function(String id)? deletePermanently,
    required TResult orElse(),
  }) {
    if (restored != null) {
      return restored(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Restored value) restored,
    required TResult Function(_DeletePermanently value) deletePermanently,
  }) {
    return restored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_DeletePermanently value)? deletePermanently,
  }) {
    return restored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Restored value)? restored,
    TResult Function(_DeletePermanently value)? deletePermanently,
    required TResult orElse(),
  }) {
    if (restored != null) {
      return restored(this);
    }
    return orElse();
  }
}

abstract class _Restored implements WasteBasketEvent {
  const factory _Restored({required final String id}) = _$RestoredImpl;

  String get id;

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestoredImplCopyWith<_$RestoredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePermanentlyImplCopyWith<$Res> {
  factory _$$DeletePermanentlyImplCopyWith(_$DeletePermanentlyImpl value,
          $Res Function(_$DeletePermanentlyImpl) then) =
      __$$DeletePermanentlyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeletePermanentlyImplCopyWithImpl<$Res>
    extends _$WasteBasketEventCopyWithImpl<$Res, _$DeletePermanentlyImpl>
    implements _$$DeletePermanentlyImplCopyWith<$Res> {
  __$$DeletePermanentlyImplCopyWithImpl(_$DeletePermanentlyImpl _value,
      $Res Function(_$DeletePermanentlyImpl) _then)
      : super(_value, _then);

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeletePermanentlyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePermanentlyImpl implements _DeletePermanently {
  const _$DeletePermanentlyImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'WasteBasketEvent.deletePermanently(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePermanentlyImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePermanentlyImplCopyWith<_$DeletePermanentlyImpl> get copyWith =>
      __$$DeletePermanentlyImplCopyWithImpl<_$DeletePermanentlyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String id) restored,
    required TResult Function(String id) deletePermanently,
  }) {
    return deletePermanently(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String id)? restored,
    TResult? Function(String id)? deletePermanently,
  }) {
    return deletePermanently?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String id)? restored,
    TResult Function(String id)? deletePermanently,
    required TResult orElse(),
  }) {
    if (deletePermanently != null) {
      return deletePermanently(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Restored value) restored,
    required TResult Function(_DeletePermanently value) deletePermanently,
  }) {
    return deletePermanently(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Restored value)? restored,
    TResult? Function(_DeletePermanently value)? deletePermanently,
  }) {
    return deletePermanently?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Restored value)? restored,
    TResult Function(_DeletePermanently value)? deletePermanently,
    required TResult orElse(),
  }) {
    if (deletePermanently != null) {
      return deletePermanently(this);
    }
    return orElse();
  }
}

abstract class _DeletePermanently implements WasteBasketEvent {
  const factory _DeletePermanently({required final String id}) =
      _$DeletePermanentlyImpl;

  String get id;

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePermanentlyImplCopyWith<_$DeletePermanentlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WasteBasketState {
  List<Note> get notes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) loadWastes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? loadWastes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? loadWastes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadWastes value) loadWastes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadWastes value)? loadWastes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWastes value)? loadWastes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WasteBasketStateCopyWith<WasteBasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WasteBasketStateCopyWith<$Res> {
  factory $WasteBasketStateCopyWith(
          WasteBasketState value, $Res Function(WasteBasketState) then) =
      _$WasteBasketStateCopyWithImpl<$Res, WasteBasketState>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class _$WasteBasketStateCopyWithImpl<$Res, $Val extends WasteBasketState>
    implements $WasteBasketStateCopyWith<$Res> {
  _$WasteBasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WasteBasketStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WasteBasketStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$InitialImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<Note> notes}) : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'WasteBasketState.initial(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) loadWastes,
  }) {
    return initial(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? loadWastes,
  }) {
    return initial?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? loadWastes,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadWastes value) loadWastes,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadWastes value)? loadWastes,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWastes value)? loadWastes,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WasteBasketState {
  const factory _Initial({required final List<Note> notes}) = _$InitialImpl;

  @override
  List<Note> get notes;

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadWastesImplCopyWith<$Res>
    implements $WasteBasketStateCopyWith<$Res> {
  factory _$$LoadWastesImplCopyWith(
          _$LoadWastesImpl value, $Res Function(_$LoadWastesImpl) then) =
      __$$LoadWastesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$LoadWastesImplCopyWithImpl<$Res>
    extends _$WasteBasketStateCopyWithImpl<$Res, _$LoadWastesImpl>
    implements _$$LoadWastesImplCopyWith<$Res> {
  __$$LoadWastesImplCopyWithImpl(
      _$LoadWastesImpl _value, $Res Function(_$LoadWastesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$LoadWastesImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$LoadWastesImpl implements _LoadWastes {
  const _$LoadWastesImpl({required final List<Note> notes}) : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'WasteBasketState.loadWastes(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWastesImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWastesImplCopyWith<_$LoadWastesImpl> get copyWith =>
      __$$LoadWastesImplCopyWithImpl<_$LoadWastesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) loadWastes,
  }) {
    return loadWastes(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? loadWastes,
  }) {
    return loadWastes?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? loadWastes,
    required TResult orElse(),
  }) {
    if (loadWastes != null) {
      return loadWastes(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadWastes value) loadWastes,
  }) {
    return loadWastes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadWastes value)? loadWastes,
  }) {
    return loadWastes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWastes value)? loadWastes,
    required TResult orElse(),
  }) {
    if (loadWastes != null) {
      return loadWastes(this);
    }
    return orElse();
  }
}

abstract class _LoadWastes implements WasteBasketState {
  const factory _LoadWastes({required final List<Note> notes}) =
      _$LoadWastesImpl;

  @override
  List<Note> get notes;

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadWastesImplCopyWith<_$LoadWastesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
