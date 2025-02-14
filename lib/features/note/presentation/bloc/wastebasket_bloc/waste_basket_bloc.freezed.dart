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
    required TResult Function() loadWastes,
    required TResult Function(Note restoredNote) restoreNote,
    required TResult Function(String id) deletePermanently,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWastes,
    TResult? Function(Note restoredNote)? restoreNote,
    TResult? Function(String id)? deletePermanently,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWastes,
    TResult Function(Note restoredNote)? restoreNote,
    TResult Function(String id)? deletePermanently,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWastes value) loadWastes,
    required TResult Function(_RestoreNote value) restoreNote,
    required TResult Function(_DeletePermanently value) deletePermanently,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWastes value)? loadWastes,
    TResult? Function(_RestoreNote value)? restoreNote,
    TResult? Function(_DeletePermanently value)? deletePermanently,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWastes value)? loadWastes,
    TResult Function(_RestoreNote value)? restoreNote,
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
abstract class _$$LoadWastesImplCopyWith<$Res> {
  factory _$$LoadWastesImplCopyWith(
          _$LoadWastesImpl value, $Res Function(_$LoadWastesImpl) then) =
      __$$LoadWastesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadWastesImplCopyWithImpl<$Res>
    extends _$WasteBasketEventCopyWithImpl<$Res, _$LoadWastesImpl>
    implements _$$LoadWastesImplCopyWith<$Res> {
  __$$LoadWastesImplCopyWithImpl(
      _$LoadWastesImpl _value, $Res Function(_$LoadWastesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadWastesImpl implements _LoadWastes {
  const _$LoadWastesImpl();

  @override
  String toString() {
    return 'WasteBasketEvent.loadWastes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadWastesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWastes,
    required TResult Function(Note restoredNote) restoreNote,
    required TResult Function(String id) deletePermanently,
  }) {
    return loadWastes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWastes,
    TResult? Function(Note restoredNote)? restoreNote,
    TResult? Function(String id)? deletePermanently,
  }) {
    return loadWastes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWastes,
    TResult Function(Note restoredNote)? restoreNote,
    TResult Function(String id)? deletePermanently,
    required TResult orElse(),
  }) {
    if (loadWastes != null) {
      return loadWastes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWastes value) loadWastes,
    required TResult Function(_RestoreNote value) restoreNote,
    required TResult Function(_DeletePermanently value) deletePermanently,
  }) {
    return loadWastes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWastes value)? loadWastes,
    TResult? Function(_RestoreNote value)? restoreNote,
    TResult? Function(_DeletePermanently value)? deletePermanently,
  }) {
    return loadWastes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWastes value)? loadWastes,
    TResult Function(_RestoreNote value)? restoreNote,
    TResult Function(_DeletePermanently value)? deletePermanently,
    required TResult orElse(),
  }) {
    if (loadWastes != null) {
      return loadWastes(this);
    }
    return orElse();
  }
}

abstract class _LoadWastes implements WasteBasketEvent {
  const factory _LoadWastes() = _$LoadWastesImpl;
}

/// @nodoc
abstract class _$$RestoreNoteImplCopyWith<$Res> {
  factory _$$RestoreNoteImplCopyWith(
          _$RestoreNoteImpl value, $Res Function(_$RestoreNoteImpl) then) =
      __$$RestoreNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Note restoredNote});

  $NoteCopyWith<$Res> get restoredNote;
}

/// @nodoc
class __$$RestoreNoteImplCopyWithImpl<$Res>
    extends _$WasteBasketEventCopyWithImpl<$Res, _$RestoreNoteImpl>
    implements _$$RestoreNoteImplCopyWith<$Res> {
  __$$RestoreNoteImplCopyWithImpl(
      _$RestoreNoteImpl _value, $Res Function(_$RestoreNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restoredNote = null,
  }) {
    return _then(_$RestoreNoteImpl(
      restoredNote: null == restoredNote
          ? _value.restoredNote
          : restoredNote // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get restoredNote {
    return $NoteCopyWith<$Res>(_value.restoredNote, (value) {
      return _then(_value.copyWith(restoredNote: value));
    });
  }
}

/// @nodoc

class _$RestoreNoteImpl implements _RestoreNote {
  const _$RestoreNoteImpl({required this.restoredNote});

  @override
  final Note restoredNote;

  @override
  String toString() {
    return 'WasteBasketEvent.restoreNote(restoredNote: $restoredNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestoreNoteImpl &&
            (identical(other.restoredNote, restoredNote) ||
                other.restoredNote == restoredNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restoredNote);

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestoreNoteImplCopyWith<_$RestoreNoteImpl> get copyWith =>
      __$$RestoreNoteImplCopyWithImpl<_$RestoreNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWastes,
    required TResult Function(Note restoredNote) restoreNote,
    required TResult Function(String id) deletePermanently,
  }) {
    return restoreNote(restoredNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWastes,
    TResult? Function(Note restoredNote)? restoreNote,
    TResult? Function(String id)? deletePermanently,
  }) {
    return restoreNote?.call(restoredNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWastes,
    TResult Function(Note restoredNote)? restoreNote,
    TResult Function(String id)? deletePermanently,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote(restoredNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWastes value) loadWastes,
    required TResult Function(_RestoreNote value) restoreNote,
    required TResult Function(_DeletePermanently value) deletePermanently,
  }) {
    return restoreNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWastes value)? loadWastes,
    TResult? Function(_RestoreNote value)? restoreNote,
    TResult? Function(_DeletePermanently value)? deletePermanently,
  }) {
    return restoreNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWastes value)? loadWastes,
    TResult Function(_RestoreNote value)? restoreNote,
    TResult Function(_DeletePermanently value)? deletePermanently,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote(this);
    }
    return orElse();
  }
}

abstract class _RestoreNote implements WasteBasketEvent {
  const factory _RestoreNote({required final Note restoredNote}) =
      _$RestoreNoteImpl;

  Note get restoredNote;

  /// Create a copy of WasteBasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestoreNoteImplCopyWith<_$RestoreNoteImpl> get copyWith =>
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
    required TResult Function() loadWastes,
    required TResult Function(Note restoredNote) restoreNote,
    required TResult Function(String id) deletePermanently,
  }) {
    return deletePermanently(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWastes,
    TResult? Function(Note restoredNote)? restoreNote,
    TResult? Function(String id)? deletePermanently,
  }) {
    return deletePermanently?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWastes,
    TResult Function(Note restoredNote)? restoreNote,
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
    required TResult Function(_LoadWastes value) loadWastes,
    required TResult Function(_RestoreNote value) restoreNote,
    required TResult Function(_DeletePermanently value) deletePermanently,
  }) {
    return deletePermanently(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWastes value)? loadWastes,
    TResult? Function(_RestoreNote value)? restoreNote,
    TResult? Function(_DeletePermanently value)? deletePermanently,
  }) {
    return deletePermanently?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWastes value)? loadWastes,
    TResult Function(_RestoreNote value)? restoreNote,
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
  List<Note> get wastes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> wastes) initial,
    required TResult Function(List<Note> wastes) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> wastes)? initial,
    TResult? Function(List<Note> wastes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> wastes)? initial,
    TResult Function(List<Note> wastes)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
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
  $Res call({List<Note> wastes});
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
    Object? wastes = null,
  }) {
    return _then(_value.copyWith(
      wastes: null == wastes
          ? _value.wastes
          : wastes // ignore: cast_nullable_to_non_nullable
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
  $Res call({List<Note> wastes});
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
    Object? wastes = null,
  }) {
    return _then(_$InitialImpl(
      wastes: null == wastes
          ? _value._wastes
          : wastes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<Note> wastes}) : _wastes = wastes;

  final List<Note> _wastes;
  @override
  List<Note> get wastes {
    if (_wastes is EqualUnmodifiableListView) return _wastes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wastes);
  }

  @override
  String toString() {
    return 'WasteBasketState.initial(wastes: $wastes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._wastes, _wastes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wastes));

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
    required TResult Function(List<Note> wastes) initial,
    required TResult Function(List<Note> wastes) loaded,
  }) {
    return initial(wastes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> wastes)? initial,
    TResult? Function(List<Note> wastes)? loaded,
  }) {
    return initial?.call(wastes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> wastes)? initial,
    TResult Function(List<Note> wastes)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(wastes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WasteBasketState {
  const factory _Initial({required final List<Note> wastes}) = _$InitialImpl;

  @override
  List<Note> get wastes;

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $WasteBasketStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> wastes});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$WasteBasketStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wastes = null,
  }) {
    return _then(_$LoadedImpl(
      wastes: null == wastes
          ? _value._wastes
          : wastes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Note> wastes}) : _wastes = wastes;

  final List<Note> _wastes;
  @override
  List<Note> get wastes {
    if (_wastes is EqualUnmodifiableListView) return _wastes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wastes);
  }

  @override
  String toString() {
    return 'WasteBasketState.loaded(wastes: $wastes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._wastes, _wastes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wastes));

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> wastes) initial,
    required TResult Function(List<Note> wastes) loaded,
  }) {
    return loaded(wastes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> wastes)? initial,
    TResult? Function(List<Note> wastes)? loaded,
  }) {
    return loaded?.call(wastes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> wastes)? initial,
    TResult Function(List<Note> wastes)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(wastes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements WasteBasketState {
  const factory _Loaded({required final List<Note> wastes}) = _$LoadedImpl;

  @override
  List<Note> get wastes;

  /// Create a copy of WasteBasketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
