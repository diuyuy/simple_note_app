// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)
        createNote,
    required TResult Function() loadNotes,
    required TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)
        updateNote,
    required TResult Function(Note deletedNote) deleteNote,
    required TResult Function(int oldIndex, int newIndex) reorderNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult? Function()? loadNotes,
    TResult? Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult? Function(Note deletedNote)? deleteNote,
    TResult? Function(int oldIndex, int newIndex)? reorderNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult Function()? loadNotes,
    TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult Function(Note deletedNote)? deleteNote,
    TResult Function(int oldIndex, int newIndex)? reorderNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_ReorderNotes value) reorderNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_ReorderNotes value)? reorderNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_ReorderNotes value)? reorderNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res, NoteEvent>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res, $Val extends NoteEvent>
    implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateNoteImplCopyWith<$Res> {
  factory _$$CreateNoteImplCopyWith(
          _$CreateNoteImpl value, $Res Function(_$CreateNoteImpl) then) =
      __$$CreateNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String? content,
      String createDate,
      bool? isFavorite,
      String? category});
}

/// @nodoc
class __$$CreateNoteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$CreateNoteImpl>
    implements _$$CreateNoteImplCopyWith<$Res> {
  __$$CreateNoteImplCopyWithImpl(
      _$CreateNoteImpl _value, $Res Function(_$CreateNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = freezed,
    Object? createDate = null,
    Object? isFavorite = freezed,
    Object? category = freezed,
  }) {
    return _then(_$CreateNoteImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateNoteImpl implements _CreateNote {
  const _$CreateNoteImpl(
      {required this.title,
      this.content,
      required this.createDate,
      this.isFavorite,
      this.category});

  @override
  final String title;
  @override
  final String? content;
  @override
  final String createDate;
  @override
  final bool? isFavorite;
  @override
  final String? category;

  @override
  String toString() {
    return 'NoteEvent.createNote(title: $title, content: $content, createDate: $createDate, isFavorite: $isFavorite, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNoteImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, content, createDate, isFavorite, category);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNoteImplCopyWith<_$CreateNoteImpl> get copyWith =>
      __$$CreateNoteImplCopyWithImpl<_$CreateNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)
        createNote,
    required TResult Function() loadNotes,
    required TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)
        updateNote,
    required TResult Function(Note deletedNote) deleteNote,
    required TResult Function(int oldIndex, int newIndex) reorderNotes,
  }) {
    return createNote(title, content, createDate, isFavorite, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult? Function()? loadNotes,
    TResult? Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult? Function(Note deletedNote)? deleteNote,
    TResult? Function(int oldIndex, int newIndex)? reorderNotes,
  }) {
    return createNote?.call(title, content, createDate, isFavorite, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult Function()? loadNotes,
    TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult Function(Note deletedNote)? deleteNote,
    TResult Function(int oldIndex, int newIndex)? reorderNotes,
    required TResult orElse(),
  }) {
    if (createNote != null) {
      return createNote(title, content, createDate, isFavorite, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_ReorderNotes value) reorderNotes,
  }) {
    return createNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_ReorderNotes value)? reorderNotes,
  }) {
    return createNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_ReorderNotes value)? reorderNotes,
    required TResult orElse(),
  }) {
    if (createNote != null) {
      return createNote(this);
    }
    return orElse();
  }
}

abstract class _CreateNote implements NoteEvent {
  const factory _CreateNote(
      {required final String title,
      final String? content,
      required final String createDate,
      final bool? isFavorite,
      final String? category}) = _$CreateNoteImpl;

  String get title;
  String? get content;
  String get createDate;
  bool? get isFavorite;
  String? get category;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNoteImplCopyWith<_$CreateNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadNotesImplCopyWith<$Res> {
  factory _$$LoadNotesImplCopyWith(
          _$LoadNotesImpl value, $Res Function(_$LoadNotesImpl) then) =
      __$$LoadNotesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNotesImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$LoadNotesImpl>
    implements _$$LoadNotesImplCopyWith<$Res> {
  __$$LoadNotesImplCopyWithImpl(
      _$LoadNotesImpl _value, $Res Function(_$LoadNotesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadNotesImpl implements _LoadNotes {
  const _$LoadNotesImpl();

  @override
  String toString() {
    return 'NoteEvent.loadNotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNotesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)
        createNote,
    required TResult Function() loadNotes,
    required TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)
        updateNote,
    required TResult Function(Note deletedNote) deleteNote,
    required TResult Function(int oldIndex, int newIndex) reorderNotes,
  }) {
    return loadNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult? Function()? loadNotes,
    TResult? Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult? Function(Note deletedNote)? deleteNote,
    TResult? Function(int oldIndex, int newIndex)? reorderNotes,
  }) {
    return loadNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult Function()? loadNotes,
    TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult Function(Note deletedNote)? deleteNote,
    TResult Function(int oldIndex, int newIndex)? reorderNotes,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_ReorderNotes value) reorderNotes,
  }) {
    return loadNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_ReorderNotes value)? reorderNotes,
  }) {
    return loadNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_ReorderNotes value)? reorderNotes,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes(this);
    }
    return orElse();
  }
}

abstract class _LoadNotes implements NoteEvent {
  const factory _LoadNotes() = _$LoadNotesImpl;
}

/// @nodoc
abstract class _$$UpdateNoteImplCopyWith<$Res> {
  factory _$$UpdateNoteImplCopyWith(
          _$UpdateNoteImpl value, $Res Function(_$UpdateNoteImpl) then) =
      __$$UpdateNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String? title,
      String? content,
      String? updateDate,
      bool? isFavorite,
      String? category});
}

/// @nodoc
class __$$UpdateNoteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$UpdateNoteImpl>
    implements _$$UpdateNoteImplCopyWith<$Res> {
  __$$UpdateNoteImplCopyWithImpl(
      _$UpdateNoteImpl _value, $Res Function(_$UpdateNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? content = freezed,
    Object? updateDate = freezed,
    Object? isFavorite = freezed,
    Object? category = freezed,
  }) {
    return _then(_$UpdateNoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: freezed == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateNoteImpl implements _UpdateNote {
  const _$UpdateNoteImpl(
      {required this.id,
      this.title,
      this.content,
      this.updateDate,
      this.isFavorite,
      this.category});

  @override
  final String id;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? updateDate;
  @override
  final bool? isFavorite;
  @override
  final String? category;

  @override
  String toString() {
    return 'NoteEvent.updateNote(id: $id, title: $title, content: $content, updateDate: $updateDate, isFavorite: $isFavorite, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, content, updateDate, isFavorite, category);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoteImplCopyWith<_$UpdateNoteImpl> get copyWith =>
      __$$UpdateNoteImplCopyWithImpl<_$UpdateNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)
        createNote,
    required TResult Function() loadNotes,
    required TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)
        updateNote,
    required TResult Function(Note deletedNote) deleteNote,
    required TResult Function(int oldIndex, int newIndex) reorderNotes,
  }) {
    return updateNote(id, title, content, updateDate, isFavorite, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult? Function()? loadNotes,
    TResult? Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult? Function(Note deletedNote)? deleteNote,
    TResult? Function(int oldIndex, int newIndex)? reorderNotes,
  }) {
    return updateNote?.call(
        id, title, content, updateDate, isFavorite, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult Function()? loadNotes,
    TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult Function(Note deletedNote)? deleteNote,
    TResult Function(int oldIndex, int newIndex)? reorderNotes,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(id, title, content, updateDate, isFavorite, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_ReorderNotes value) reorderNotes,
  }) {
    return updateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_ReorderNotes value)? reorderNotes,
  }) {
    return updateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_ReorderNotes value)? reorderNotes,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(this);
    }
    return orElse();
  }
}

abstract class _UpdateNote implements NoteEvent {
  const factory _UpdateNote(
      {required final String id,
      final String? title,
      final String? content,
      final String? updateDate,
      final bool? isFavorite,
      final String? category}) = _$UpdateNoteImpl;

  String get id;
  String? get title;
  String? get content;
  String? get updateDate;
  bool? get isFavorite;
  String? get category;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNoteImplCopyWith<_$UpdateNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteImplCopyWith<$Res> {
  factory _$$DeleteNoteImplCopyWith(
          _$DeleteNoteImpl value, $Res Function(_$DeleteNoteImpl) then) =
      __$$DeleteNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Note deletedNote});

  $NoteCopyWith<$Res> get deletedNote;
}

/// @nodoc
class __$$DeleteNoteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$DeleteNoteImpl>
    implements _$$DeleteNoteImplCopyWith<$Res> {
  __$$DeleteNoteImplCopyWithImpl(
      _$DeleteNoteImpl _value, $Res Function(_$DeleteNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedNote = null,
  }) {
    return _then(_$DeleteNoteImpl(
      deletedNote: null == deletedNote
          ? _value.deletedNote
          : deletedNote // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get deletedNote {
    return $NoteCopyWith<$Res>(_value.deletedNote, (value) {
      return _then(_value.copyWith(deletedNote: value));
    });
  }
}

/// @nodoc

class _$DeleteNoteImpl implements _DeleteNote {
  const _$DeleteNoteImpl({required this.deletedNote});

  @override
  final Note deletedNote;

  @override
  String toString() {
    return 'NoteEvent.deleteNote(deletedNote: $deletedNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteImpl &&
            (identical(other.deletedNote, deletedNote) ||
                other.deletedNote == deletedNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletedNote);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      __$$DeleteNoteImplCopyWithImpl<_$DeleteNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)
        createNote,
    required TResult Function() loadNotes,
    required TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)
        updateNote,
    required TResult Function(Note deletedNote) deleteNote,
    required TResult Function(int oldIndex, int newIndex) reorderNotes,
  }) {
    return deleteNote(deletedNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult? Function()? loadNotes,
    TResult? Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult? Function(Note deletedNote)? deleteNote,
    TResult? Function(int oldIndex, int newIndex)? reorderNotes,
  }) {
    return deleteNote?.call(deletedNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult Function()? loadNotes,
    TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult Function(Note deletedNote)? deleteNote,
    TResult Function(int oldIndex, int newIndex)? reorderNotes,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(deletedNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_ReorderNotes value) reorderNotes,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_ReorderNotes value)? reorderNotes,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_ReorderNotes value)? reorderNotes,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class _DeleteNote implements NoteEvent {
  const factory _DeleteNote({required final Note deletedNote}) =
      _$DeleteNoteImpl;

  Note get deletedNote;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderNotesImplCopyWith<$Res> {
  factory _$$ReorderNotesImplCopyWith(
          _$ReorderNotesImpl value, $Res Function(_$ReorderNotesImpl) then) =
      __$$ReorderNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$ReorderNotesImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$ReorderNotesImpl>
    implements _$$ReorderNotesImplCopyWith<$Res> {
  __$$ReorderNotesImplCopyWithImpl(
      _$ReorderNotesImpl _value, $Res Function(_$ReorderNotesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$ReorderNotesImpl(
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

class _$ReorderNotesImpl implements _ReorderNotes {
  const _$ReorderNotesImpl({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'NoteEvent.reorderNotes(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderNotesImpl &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderNotesImplCopyWith<_$ReorderNotesImpl> get copyWith =>
      __$$ReorderNotesImplCopyWithImpl<_$ReorderNotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)
        createNote,
    required TResult Function() loadNotes,
    required TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)
        updateNote,
    required TResult Function(Note deletedNote) deleteNote,
    required TResult Function(int oldIndex, int newIndex) reorderNotes,
  }) {
    return reorderNotes(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult? Function()? loadNotes,
    TResult? Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult? Function(Note deletedNote)? deleteNote,
    TResult? Function(int oldIndex, int newIndex)? reorderNotes,
  }) {
    return reorderNotes?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? content, String createDate,
            bool? isFavorite, String? category)?
        createNote,
    TResult Function()? loadNotes,
    TResult Function(String id, String? title, String? content,
            String? updateDate, bool? isFavorite, String? category)?
        updateNote,
    TResult Function(Note deletedNote)? deleteNote,
    TResult Function(int oldIndex, int newIndex)? reorderNotes,
    required TResult orElse(),
  }) {
    if (reorderNotes != null) {
      return reorderNotes(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_ReorderNotes value) reorderNotes,
  }) {
    return reorderNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_ReorderNotes value)? reorderNotes,
  }) {
    return reorderNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_ReorderNotes value)? reorderNotes,
    required TResult orElse(),
  }) {
    if (reorderNotes != null) {
      return reorderNotes(this);
    }
    return orElse();
  }
}

abstract class _ReorderNotes implements NoteEvent {
  const factory _ReorderNotes(
      {required final int oldIndex,
      required final int newIndex}) = _$ReorderNotesImpl;

  int get oldIndex;
  int get newIndex;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReorderNotesImplCopyWith<_$ReorderNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteState {
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

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteState
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
    implements $NoteStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteState
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
    return 'NoteState.initial(notes: $notes)';
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

  /// Create a copy of NoteState
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

abstract class _Initial implements NoteState {
  const factory _Initial({required final List<Note> notes}) = _$InitialImpl;

  @override
  List<Note> get notes;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $NoteStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteState
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
    return 'NoteState.loaded(notes: $notes)';
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

  /// Create a copy of NoteState
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

abstract class _Loaded implements NoteState {
  const factory _Loaded({required final List<Note> notes}) = _$LoadedImpl;

  @override
  List<Note> get notes;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
