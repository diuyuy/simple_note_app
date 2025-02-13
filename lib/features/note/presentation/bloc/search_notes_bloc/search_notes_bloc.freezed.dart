// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchNotesBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllNotes,
    required TResult Function(String query) searched,
    required TResult Function(String id, bool isFavorite) tapFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllNotes value) loadAllNotes,
    required TResult Function(_Searched value) searched,
    required TResult Function(_TapFavorite value) tapFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNotesBlocEventCopyWith<$Res> {
  factory $SearchNotesBlocEventCopyWith(SearchNotesBlocEvent value,
          $Res Function(SearchNotesBlocEvent) then) =
      _$SearchNotesBlocEventCopyWithImpl<$Res, SearchNotesBlocEvent>;
}

/// @nodoc
class _$SearchNotesBlocEventCopyWithImpl<$Res,
        $Val extends SearchNotesBlocEvent>
    implements $SearchNotesBlocEventCopyWith<$Res> {
  _$SearchNotesBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadAllNotesImplCopyWith<$Res> {
  factory _$$LoadAllNotesImplCopyWith(
          _$LoadAllNotesImpl value, $Res Function(_$LoadAllNotesImpl) then) =
      __$$LoadAllNotesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAllNotesImplCopyWithImpl<$Res>
    extends _$SearchNotesBlocEventCopyWithImpl<$Res, _$LoadAllNotesImpl>
    implements _$$LoadAllNotesImplCopyWith<$Res> {
  __$$LoadAllNotesImplCopyWithImpl(
      _$LoadAllNotesImpl _value, $Res Function(_$LoadAllNotesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAllNotesImpl implements _LoadAllNotes {
  const _$LoadAllNotesImpl();

  @override
  String toString() {
    return 'SearchNotesBlocEvent.loadAllNotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAllNotesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllNotes,
    required TResult Function(String query) searched,
    required TResult Function(String id, bool isFavorite) tapFavorite,
  }) {
    return loadAllNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
  }) {
    return loadAllNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    required TResult orElse(),
  }) {
    if (loadAllNotes != null) {
      return loadAllNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllNotes value) loadAllNotes,
    required TResult Function(_Searched value) searched,
    required TResult Function(_TapFavorite value) tapFavorite,
  }) {
    return loadAllNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
  }) {
    return loadAllNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    required TResult orElse(),
  }) {
    if (loadAllNotes != null) {
      return loadAllNotes(this);
    }
    return orElse();
  }
}

abstract class _LoadAllNotes implements SearchNotesBlocEvent {
  const factory _LoadAllNotes() = _$LoadAllNotesImpl;
}

/// @nodoc
abstract class _$$SearchedImplCopyWith<$Res> {
  factory _$$SearchedImplCopyWith(
          _$SearchedImpl value, $Res Function(_$SearchedImpl) then) =
      __$$SearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchedImplCopyWithImpl<$Res>
    extends _$SearchNotesBlocEventCopyWithImpl<$Res, _$SearchedImpl>
    implements _$$SearchedImplCopyWith<$Res> {
  __$$SearchedImplCopyWithImpl(
      _$SearchedImpl _value, $Res Function(_$SearchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchedImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchedImpl implements _Searched {
  const _$SearchedImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchNotesBlocEvent.searched(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedImplCopyWith<_$SearchedImpl> get copyWith =>
      __$$SearchedImplCopyWithImpl<_$SearchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllNotes,
    required TResult Function(String query) searched,
    required TResult Function(String id, bool isFavorite) tapFavorite,
  }) {
    return searched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
  }) {
    return searched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllNotes value) loadAllNotes,
    required TResult Function(_Searched value) searched,
    required TResult Function(_TapFavorite value) tapFavorite,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements SearchNotesBlocEvent {
  const factory _Searched({required final String query}) = _$SearchedImpl;

  String get query;

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchedImplCopyWith<_$SearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TapFavoriteImplCopyWith<$Res> {
  factory _$$TapFavoriteImplCopyWith(
          _$TapFavoriteImpl value, $Res Function(_$TapFavoriteImpl) then) =
      __$$TapFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, bool isFavorite});
}

/// @nodoc
class __$$TapFavoriteImplCopyWithImpl<$Res>
    extends _$SearchNotesBlocEventCopyWithImpl<$Res, _$TapFavoriteImpl>
    implements _$$TapFavoriteImplCopyWith<$Res> {
  __$$TapFavoriteImplCopyWithImpl(
      _$TapFavoriteImpl _value, $Res Function(_$TapFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isFavorite = null,
  }) {
    return _then(_$TapFavoriteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TapFavoriteImpl implements _TapFavorite {
  const _$TapFavoriteImpl({required this.id, required this.isFavorite});

  @override
  final String id;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'SearchNotesBlocEvent.tapFavorite(id: $id, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TapFavoriteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isFavorite);

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TapFavoriteImplCopyWith<_$TapFavoriteImpl> get copyWith =>
      __$$TapFavoriteImplCopyWithImpl<_$TapFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllNotes,
    required TResult Function(String query) searched,
    required TResult Function(String id, bool isFavorite) tapFavorite,
  }) {
    return tapFavorite(id, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
  }) {
    return tapFavorite?.call(id, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    required TResult orElse(),
  }) {
    if (tapFavorite != null) {
      return tapFavorite(id, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllNotes value) loadAllNotes,
    required TResult Function(_Searched value) searched,
    required TResult Function(_TapFavorite value) tapFavorite,
  }) {
    return tapFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
  }) {
    return tapFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    required TResult orElse(),
  }) {
    if (tapFavorite != null) {
      return tapFavorite(this);
    }
    return orElse();
  }
}

abstract class _TapFavorite implements SearchNotesBlocEvent {
  const factory _TapFavorite(
      {required final String id,
      required final bool isFavorite}) = _$TapFavoriteImpl;

  String get id;
  bool get isFavorite;

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TapFavoriteImplCopyWith<_$TapFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchNotesState {
  List<Note> get notes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? loaded,
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

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchNotesStateCopyWith<SearchNotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNotesStateCopyWith<$Res> {
  factory $SearchNotesStateCopyWith(
          SearchNotesState value, $Res Function(SearchNotesState) then) =
      _$SearchNotesStateCopyWithImpl<$Res, SearchNotesState>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class _$SearchNotesStateCopyWithImpl<$Res, $Val extends SearchNotesState>
    implements $SearchNotesStateCopyWith<$Res> {
  _$SearchNotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchNotesState
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
    implements $SearchNotesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchNotesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchNotesState
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
    return 'SearchNotesState.initial(notes: $notes)';
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

  /// Create a copy of SearchNotesState
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
    required TResult Function(List<Note> notes) loaded,
  }) {
    return initial(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? loaded,
  }) {
    return initial?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? loaded,
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

abstract class _Initial implements SearchNotesState {
  const factory _Initial({required final List<Note> notes}) = _$InitialImpl;

  @override
  List<Note> get notes;

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $SearchNotesStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SearchNotesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$LoadedImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Note> notes}) : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'SearchNotesState.loaded(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) loaded,
  }) {
    return loaded(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? loaded,
  }) {
    return loaded?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notes);
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

abstract class _Loaded implements SearchNotesState {
  const factory _Loaded({required final List<Note> notes}) = _$LoadedImpl;

  @override
  List<Note> get notes;

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
