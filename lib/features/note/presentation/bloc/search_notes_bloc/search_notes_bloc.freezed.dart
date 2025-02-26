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
    required TResult Function(List<String> deletedNotes) deleteNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
    TResult? Function(List<String> deletedNotes)? deleteNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    TResult Function(List<String> deletedNotes)? deleteNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllNotes value) loadAllNotes,
    required TResult Function(_Searched value) searched,
    required TResult Function(_TapFavorite value) tapFavorite,
    required TResult Function(_DeleteNotes value) deleteNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
    TResult? Function(_DeleteNotes value)? deleteNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    TResult Function(_DeleteNotes value)? deleteNotes,
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
    required TResult Function(List<String> deletedNotes) deleteNotes,
  }) {
    return loadAllNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
    TResult? Function(List<String> deletedNotes)? deleteNotes,
  }) {
    return loadAllNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    TResult Function(List<String> deletedNotes)? deleteNotes,
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
    required TResult Function(_DeleteNotes value) deleteNotes,
  }) {
    return loadAllNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
    TResult? Function(_DeleteNotes value)? deleteNotes,
  }) {
    return loadAllNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    TResult Function(_DeleteNotes value)? deleteNotes,
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
    required TResult Function(List<String> deletedNotes) deleteNotes,
  }) {
    return searched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
    TResult? Function(List<String> deletedNotes)? deleteNotes,
  }) {
    return searched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    TResult Function(List<String> deletedNotes)? deleteNotes,
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
    required TResult Function(_DeleteNotes value) deleteNotes,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
    TResult? Function(_DeleteNotes value)? deleteNotes,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    TResult Function(_DeleteNotes value)? deleteNotes,
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
    required TResult Function(List<String> deletedNotes) deleteNotes,
  }) {
    return tapFavorite(id, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
    TResult? Function(List<String> deletedNotes)? deleteNotes,
  }) {
    return tapFavorite?.call(id, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    TResult Function(List<String> deletedNotes)? deleteNotes,
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
    required TResult Function(_DeleteNotes value) deleteNotes,
  }) {
    return tapFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
    TResult? Function(_DeleteNotes value)? deleteNotes,
  }) {
    return tapFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    TResult Function(_DeleteNotes value)? deleteNotes,
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
abstract class _$$DeleteNotesImplCopyWith<$Res> {
  factory _$$DeleteNotesImplCopyWith(
          _$DeleteNotesImpl value, $Res Function(_$DeleteNotesImpl) then) =
      __$$DeleteNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> deletedNotes});
}

/// @nodoc
class __$$DeleteNotesImplCopyWithImpl<$Res>
    extends _$SearchNotesBlocEventCopyWithImpl<$Res, _$DeleteNotesImpl>
    implements _$$DeleteNotesImplCopyWith<$Res> {
  __$$DeleteNotesImplCopyWithImpl(
      _$DeleteNotesImpl _value, $Res Function(_$DeleteNotesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedNotes = null,
  }) {
    return _then(_$DeleteNotesImpl(
      deletedNotes: null == deletedNotes
          ? _value._deletedNotes
          : deletedNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DeleteNotesImpl implements _DeleteNotes {
  const _$DeleteNotesImpl({required final List<String> deletedNotes})
      : _deletedNotes = deletedNotes;

  final List<String> _deletedNotes;
  @override
  List<String> get deletedNotes {
    if (_deletedNotes is EqualUnmodifiableListView) return _deletedNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deletedNotes);
  }

  @override
  String toString() {
    return 'SearchNotesBlocEvent.deleteNotes(deletedNotes: $deletedNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotesImpl &&
            const DeepCollectionEquality()
                .equals(other._deletedNotes, _deletedNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deletedNotes));

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotesImplCopyWith<_$DeleteNotesImpl> get copyWith =>
      __$$DeleteNotesImplCopyWithImpl<_$DeleteNotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllNotes,
    required TResult Function(String query) searched,
    required TResult Function(String id, bool isFavorite) tapFavorite,
    required TResult Function(List<String> deletedNotes) deleteNotes,
  }) {
    return deleteNotes(deletedNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllNotes,
    TResult? Function(String query)? searched,
    TResult? Function(String id, bool isFavorite)? tapFavorite,
    TResult? Function(List<String> deletedNotes)? deleteNotes,
  }) {
    return deleteNotes?.call(deletedNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllNotes,
    TResult Function(String query)? searched,
    TResult Function(String id, bool isFavorite)? tapFavorite,
    TResult Function(List<String> deletedNotes)? deleteNotes,
    required TResult orElse(),
  }) {
    if (deleteNotes != null) {
      return deleteNotes(deletedNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAllNotes value) loadAllNotes,
    required TResult Function(_Searched value) searched,
    required TResult Function(_TapFavorite value) tapFavorite,
    required TResult Function(_DeleteNotes value) deleteNotes,
  }) {
    return deleteNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAllNotes value)? loadAllNotes,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_TapFavorite value)? tapFavorite,
    TResult? Function(_DeleteNotes value)? deleteNotes,
  }) {
    return deleteNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAllNotes value)? loadAllNotes,
    TResult Function(_Searched value)? searched,
    TResult Function(_TapFavorite value)? tapFavorite,
    TResult Function(_DeleteNotes value)? deleteNotes,
    required TResult orElse(),
  }) {
    if (deleteNotes != null) {
      return deleteNotes(this);
    }
    return orElse();
  }
}

abstract class _DeleteNotes implements SearchNotesBlocEvent {
  const factory _DeleteNotes({required final List<String> deletedNotes}) =
      _$DeleteNotesImpl;

  List<String> get deletedNotes;

  /// Create a copy of SearchNotesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNotesImplCopyWith<_$DeleteNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchNotesState {
  String get query => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<Note> notes) initial,
    required TResult Function(String query, List<Note> notes) success,
    required TResult Function(String query, List<Note> notes) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<Note> notes)? initial,
    TResult? Function(String query, List<Note> notes)? success,
    TResult? Function(String query, List<Note> notes)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<Note> notes)? initial,
    TResult Function(String query, List<Note> notes)? success,
    TResult Function(String query, List<Note> notes)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchNotesLoadSuccess value) success,
    required TResult Function(_SearchNotesLoadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchNotesLoadSuccess value)? success,
    TResult? Function(_SearchNotesLoadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchNotesLoadSuccess value)? success,
    TResult Function(_SearchNotesLoadFailure value)? failure,
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
  $Res call({String query, List<Note> notes});
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
    Object? query = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String query, List<Note> notes});
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
    Object? query = null,
    Object? notes = null,
  }) {
    return _then(_$InitialImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.query, required final List<Note> notes})
      : _notes = notes;

  @override
  final String query;
  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'SearchNotesState.initial(query: $query, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_notes));

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
    required TResult Function(String query, List<Note> notes) initial,
    required TResult Function(String query, List<Note> notes) success,
    required TResult Function(String query, List<Note> notes) failure,
  }) {
    return initial(query, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<Note> notes)? initial,
    TResult? Function(String query, List<Note> notes)? success,
    TResult? Function(String query, List<Note> notes)? failure,
  }) {
    return initial?.call(query, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<Note> notes)? initial,
    TResult Function(String query, List<Note> notes)? success,
    TResult Function(String query, List<Note> notes)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(query, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchNotesLoadSuccess value) success,
    required TResult Function(_SearchNotesLoadFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchNotesLoadSuccess value)? success,
    TResult? Function(_SearchNotesLoadFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchNotesLoadSuccess value)? success,
    TResult Function(_SearchNotesLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchNotesState {
  const factory _Initial(
      {required final String query,
      required final List<Note> notes}) = _$InitialImpl;

  @override
  String get query;
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
abstract class _$$SearchNotesLoadSuccessImplCopyWith<$Res>
    implements $SearchNotesStateCopyWith<$Res> {
  factory _$$SearchNotesLoadSuccessImplCopyWith(
          _$SearchNotesLoadSuccessImpl value,
          $Res Function(_$SearchNotesLoadSuccessImpl) then) =
      __$$SearchNotesLoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, List<Note> notes});
}

/// @nodoc
class __$$SearchNotesLoadSuccessImplCopyWithImpl<$Res>
    extends _$SearchNotesStateCopyWithImpl<$Res, _$SearchNotesLoadSuccessImpl>
    implements _$$SearchNotesLoadSuccessImplCopyWith<$Res> {
  __$$SearchNotesLoadSuccessImplCopyWithImpl(
      _$SearchNotesLoadSuccessImpl _value,
      $Res Function(_$SearchNotesLoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? notes = null,
  }) {
    return _then(_$SearchNotesLoadSuccessImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$SearchNotesLoadSuccessImpl implements _SearchNotesLoadSuccess {
  const _$SearchNotesLoadSuccessImpl(
      {required this.query, required final List<Note> notes})
      : _notes = notes;

  @override
  final String query;
  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'SearchNotesState.success(query: $query, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchNotesLoadSuccessImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_notes));

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchNotesLoadSuccessImplCopyWith<_$SearchNotesLoadSuccessImpl>
      get copyWith => __$$SearchNotesLoadSuccessImplCopyWithImpl<
          _$SearchNotesLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<Note> notes) initial,
    required TResult Function(String query, List<Note> notes) success,
    required TResult Function(String query, List<Note> notes) failure,
  }) {
    return success(query, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<Note> notes)? initial,
    TResult? Function(String query, List<Note> notes)? success,
    TResult? Function(String query, List<Note> notes)? failure,
  }) {
    return success?.call(query, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<Note> notes)? initial,
    TResult Function(String query, List<Note> notes)? success,
    TResult Function(String query, List<Note> notes)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(query, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchNotesLoadSuccess value) success,
    required TResult Function(_SearchNotesLoadFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchNotesLoadSuccess value)? success,
    TResult? Function(_SearchNotesLoadFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchNotesLoadSuccess value)? success,
    TResult Function(_SearchNotesLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchNotesLoadSuccess implements SearchNotesState {
  const factory _SearchNotesLoadSuccess(
      {required final String query,
      required final List<Note> notes}) = _$SearchNotesLoadSuccessImpl;

  @override
  String get query;
  @override
  List<Note> get notes;

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchNotesLoadSuccessImplCopyWith<_$SearchNotesLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchNotesLoadFailureImplCopyWith<$Res>
    implements $SearchNotesStateCopyWith<$Res> {
  factory _$$SearchNotesLoadFailureImplCopyWith(
          _$SearchNotesLoadFailureImpl value,
          $Res Function(_$SearchNotesLoadFailureImpl) then) =
      __$$SearchNotesLoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, List<Note> notes});
}

/// @nodoc
class __$$SearchNotesLoadFailureImplCopyWithImpl<$Res>
    extends _$SearchNotesStateCopyWithImpl<$Res, _$SearchNotesLoadFailureImpl>
    implements _$$SearchNotesLoadFailureImplCopyWith<$Res> {
  __$$SearchNotesLoadFailureImplCopyWithImpl(
      _$SearchNotesLoadFailureImpl _value,
      $Res Function(_$SearchNotesLoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? notes = null,
  }) {
    return _then(_$SearchNotesLoadFailureImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$SearchNotesLoadFailureImpl implements _SearchNotesLoadFailure {
  const _$SearchNotesLoadFailureImpl(
      {required this.query, required final List<Note> notes})
      : _notes = notes;

  @override
  final String query;
  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'SearchNotesState.failure(query: $query, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchNotesLoadFailureImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_notes));

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchNotesLoadFailureImplCopyWith<_$SearchNotesLoadFailureImpl>
      get copyWith => __$$SearchNotesLoadFailureImplCopyWithImpl<
          _$SearchNotesLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, List<Note> notes) initial,
    required TResult Function(String query, List<Note> notes) success,
    required TResult Function(String query, List<Note> notes) failure,
  }) {
    return failure(query, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<Note> notes)? initial,
    TResult? Function(String query, List<Note> notes)? success,
    TResult? Function(String query, List<Note> notes)? failure,
  }) {
    return failure?.call(query, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<Note> notes)? initial,
    TResult Function(String query, List<Note> notes)? success,
    TResult Function(String query, List<Note> notes)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(query, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchNotesLoadSuccess value) success,
    required TResult Function(_SearchNotesLoadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchNotesLoadSuccess value)? success,
    TResult? Function(_SearchNotesLoadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchNotesLoadSuccess value)? success,
    TResult Function(_SearchNotesLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SearchNotesLoadFailure implements SearchNotesState {
  const factory _SearchNotesLoadFailure(
      {required final String query,
      required final List<Note> notes}) = _$SearchNotesLoadFailureImpl;

  @override
  String get query;
  @override
  List<Note> get notes;

  /// Create a copy of SearchNotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchNotesLoadFailureImplCopyWith<_$SearchNotesLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
