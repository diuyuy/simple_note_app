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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
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
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) {
    return createNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) {
    return createNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
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
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) {
    return loadNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) {
    return loadNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
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
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) {
    return updateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) {
    return updateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
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
abstract class _$$UpdateMultipleNotesCategoryImplCopyWith<$Res> {
  factory _$$UpdateMultipleNotesCategoryImplCopyWith(
          _$UpdateMultipleNotesCategoryImpl value,
          $Res Function(_$UpdateMultipleNotesCategoryImpl) then) =
      __$$UpdateMultipleNotesCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> noteIds, String category});
}

/// @nodoc
class __$$UpdateMultipleNotesCategoryImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$UpdateMultipleNotesCategoryImpl>
    implements _$$UpdateMultipleNotesCategoryImplCopyWith<$Res> {
  __$$UpdateMultipleNotesCategoryImplCopyWithImpl(
      _$UpdateMultipleNotesCategoryImpl _value,
      $Res Function(_$UpdateMultipleNotesCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteIds = null,
    Object? category = null,
  }) {
    return _then(_$UpdateMultipleNotesCategoryImpl(
      noteIds: null == noteIds
          ? _value._noteIds
          : noteIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateMultipleNotesCategoryImpl
    implements _UpdateMultipleNotesCategory {
  const _$UpdateMultipleNotesCategoryImpl(
      {required final List<String> noteIds, required this.category})
      : _noteIds = noteIds;

  final List<String> _noteIds;
  @override
  List<String> get noteIds {
    if (_noteIds is EqualUnmodifiableListView) return _noteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noteIds);
  }

  @override
  final String category;

  @override
  String toString() {
    return 'NoteEvent.updateMultipleNotesCategory(noteIds: $noteIds, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMultipleNotesCategoryImpl &&
            const DeepCollectionEquality().equals(other._noteIds, _noteIds) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_noteIds), category);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMultipleNotesCategoryImplCopyWith<_$UpdateMultipleNotesCategoryImpl>
      get copyWith => __$$UpdateMultipleNotesCategoryImplCopyWithImpl<
          _$UpdateMultipleNotesCategoryImpl>(this, _$identity);

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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
  }) {
    return updateMultipleNotesCategory(noteIds, category);
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
  }) {
    return updateMultipleNotesCategory?.call(noteIds, category);
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
    required TResult orElse(),
  }) {
    if (updateMultipleNotesCategory != null) {
      return updateMultipleNotesCategory(noteIds, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) {
    return updateMultipleNotesCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) {
    return updateMultipleNotesCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) {
    if (updateMultipleNotesCategory != null) {
      return updateMultipleNotesCategory(this);
    }
    return orElse();
  }
}

abstract class _UpdateMultipleNotesCategory implements NoteEvent {
  const factory _UpdateMultipleNotesCategory(
      {required final List<String> noteIds,
      required final String category}) = _$UpdateMultipleNotesCategoryImpl;

  List<String> get noteIds;
  String get category;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMultipleNotesCategoryImplCopyWith<_$UpdateMultipleNotesCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteImplCopyWith<$Res> {
  factory _$$DeleteNoteImplCopyWith(
          _$DeleteNoteImpl value, $Res Function(_$DeleteNoteImpl) then) =
      __$$DeleteNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deletedNote});
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
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNoteImpl implements _DeleteNote {
  const _$DeleteNoteImpl({required this.deletedNote});

  @override
  final String deletedNote;

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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
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
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class _DeleteNote implements NoteEvent {
  const factory _DeleteNote({required final String deletedNote}) =
      _$DeleteNoteImpl;

  String get deletedNote;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMultipleNotesImplCopyWith<$Res> {
  factory _$$DeleteMultipleNotesImplCopyWith(_$DeleteMultipleNotesImpl value,
          $Res Function(_$DeleteMultipleNotesImpl) then) =
      __$$DeleteMultipleNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> deletedNotes});
}

/// @nodoc
class __$$DeleteMultipleNotesImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$DeleteMultipleNotesImpl>
    implements _$$DeleteMultipleNotesImplCopyWith<$Res> {
  __$$DeleteMultipleNotesImplCopyWithImpl(_$DeleteMultipleNotesImpl _value,
      $Res Function(_$DeleteMultipleNotesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedNotes = null,
  }) {
    return _then(_$DeleteMultipleNotesImpl(
      deletedNotes: null == deletedNotes
          ? _value._deletedNotes
          : deletedNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DeleteMultipleNotesImpl implements _DeleteMultipleNotes {
  const _$DeleteMultipleNotesImpl({required final List<String> deletedNotes})
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
    return 'NoteEvent.deleteMultipleNotes(deletedNotes: $deletedNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMultipleNotesImpl &&
            const DeepCollectionEquality()
                .equals(other._deletedNotes, _deletedNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deletedNotes));

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMultipleNotesImplCopyWith<_$DeleteMultipleNotesImpl> get copyWith =>
      __$$DeleteMultipleNotesImplCopyWithImpl<_$DeleteMultipleNotesImpl>(
          this, _$identity);

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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
  }) {
    return deleteMultipleNotes(deletedNotes);
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
  }) {
    return deleteMultipleNotes?.call(deletedNotes);
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
    required TResult orElse(),
  }) {
    if (deleteMultipleNotes != null) {
      return deleteMultipleNotes(deletedNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) {
    return deleteMultipleNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) {
    return deleteMultipleNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) {
    if (deleteMultipleNotes != null) {
      return deleteMultipleNotes(this);
    }
    return orElse();
  }
}

abstract class _DeleteMultipleNotes implements NoteEvent {
  const factory _DeleteMultipleNotes(
      {required final List<String> deletedNotes}) = _$DeleteMultipleNotesImpl;

  List<String> get deletedNotes;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMultipleNotesImplCopyWith<_$DeleteMultipleNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderNotesImplCopyWith<$Res> {
  factory _$$ReorderNotesImplCopyWith(
          _$ReorderNotesImpl value, $Res Function(_$ReorderNotesImpl) then) =
      __$$ReorderNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> newOrder});
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
    Object? newOrder = null,
  }) {
    return _then(_$ReorderNotesImpl(
      newOrder: null == newOrder
          ? _value._newOrder
          : newOrder // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ReorderNotesImpl implements _ReorderNotes {
  const _$ReorderNotesImpl({required final List<String> newOrder})
      : _newOrder = newOrder;

  final List<String> _newOrder;
  @override
  List<String> get newOrder {
    if (_newOrder is EqualUnmodifiableListView) return _newOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newOrder);
  }

  @override
  String toString() {
    return 'NoteEvent.reorderNotes(newOrder: $newOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderNotesImpl &&
            const DeepCollectionEquality().equals(other._newOrder, _newOrder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newOrder));

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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
  }) {
    return reorderNotes(newOrder);
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
  }) {
    return reorderNotes?.call(newOrder);
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
    required TResult orElse(),
  }) {
    if (reorderNotes != null) {
      return reorderNotes(newOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) {
    return reorderNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) {
    return reorderNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) {
    if (reorderNotes != null) {
      return reorderNotes(this);
    }
    return orElse();
  }
}

abstract class _ReorderNotes implements NoteEvent {
  const factory _ReorderNotes({required final List<String> newOrder}) =
      _$ReorderNotesImpl;

  List<String> get newOrder;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReorderNotesImplCopyWith<_$ReorderNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreNotesImplCopyWith<$Res> {
  factory _$$RestoreNotesImplCopyWith(
          _$RestoreNotesImpl value, $Res Function(_$RestoreNotesImpl) then) =
      __$$RestoreNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> restoredNotes});
}

/// @nodoc
class __$$RestoreNotesImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$RestoreNotesImpl>
    implements _$$RestoreNotesImplCopyWith<$Res> {
  __$$RestoreNotesImplCopyWithImpl(
      _$RestoreNotesImpl _value, $Res Function(_$RestoreNotesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restoredNotes = null,
  }) {
    return _then(_$RestoreNotesImpl(
      restoredNotes: null == restoredNotes
          ? _value._restoredNotes
          : restoredNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$RestoreNotesImpl implements _RestoreNotes {
  const _$RestoreNotesImpl({required final List<String> restoredNotes})
      : _restoredNotes = restoredNotes;

  final List<String> _restoredNotes;
  @override
  List<String> get restoredNotes {
    if (_restoredNotes is EqualUnmodifiableListView) return _restoredNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restoredNotes);
  }

  @override
  String toString() {
    return 'NoteEvent.restoreNotes(restoredNotes: $restoredNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestoreNotesImpl &&
            const DeepCollectionEquality()
                .equals(other._restoredNotes, _restoredNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_restoredNotes));

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestoreNotesImplCopyWith<_$RestoreNotesImpl> get copyWith =>
      __$$RestoreNotesImplCopyWithImpl<_$RestoreNotesImpl>(this, _$identity);

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
    required TResult Function(List<String> noteIds, String category)
        updateMultipleNotesCategory,
    required TResult Function(String deletedNote) deleteNote,
    required TResult Function(List<String> deletedNotes) deleteMultipleNotes,
    required TResult Function(List<String> newOrder) reorderNotes,
    required TResult Function(List<String> restoredNotes) restoreNotes,
  }) {
    return restoreNotes(restoredNotes);
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
    TResult? Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult? Function(String deletedNote)? deleteNote,
    TResult? Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult? Function(List<String> newOrder)? reorderNotes,
    TResult? Function(List<String> restoredNotes)? restoreNotes,
  }) {
    return restoreNotes?.call(restoredNotes);
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
    TResult Function(List<String> noteIds, String category)?
        updateMultipleNotesCategory,
    TResult Function(String deletedNote)? deleteNote,
    TResult Function(List<String> deletedNotes)? deleteMultipleNotes,
    TResult Function(List<String> newOrder)? reorderNotes,
    TResult Function(List<String> restoredNotes)? restoreNotes,
    required TResult orElse(),
  }) {
    if (restoreNotes != null) {
      return restoreNotes(restoredNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNote value) createNote,
    required TResult Function(_LoadNotes value) loadNotes,
    required TResult Function(_UpdateNote value) updateNote,
    required TResult Function(_UpdateMultipleNotesCategory value)
        updateMultipleNotesCategory,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_DeleteMultipleNotes value) deleteMultipleNotes,
    required TResult Function(_ReorderNotes value) reorderNotes,
    required TResult Function(_RestoreNotes value) restoreNotes,
  }) {
    return restoreNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNote value)? createNote,
    TResult? Function(_LoadNotes value)? loadNotes,
    TResult? Function(_UpdateNote value)? updateNote,
    TResult? Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult? Function(_ReorderNotes value)? reorderNotes,
    TResult? Function(_RestoreNotes value)? restoreNotes,
  }) {
    return restoreNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNote value)? createNote,
    TResult Function(_LoadNotes value)? loadNotes,
    TResult Function(_UpdateNote value)? updateNote,
    TResult Function(_UpdateMultipleNotesCategory value)?
        updateMultipleNotesCategory,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_DeleteMultipleNotes value)? deleteMultipleNotes,
    TResult Function(_ReorderNotes value)? reorderNotes,
    TResult Function(_RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) {
    if (restoreNotes != null) {
      return restoreNotes(this);
    }
    return orElse();
  }
}

abstract class _RestoreNotes implements NoteEvent {
  const factory _RestoreNotes({required final List<String> restoredNotes}) =
      _$RestoreNotesImpl;

  List<String> get restoredNotes;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestoreNotesImplCopyWith<_$RestoreNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteState {
  List<Note> get notes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) success,
    required TResult Function(List<Note> notes, String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? success,
    TResult? Function(List<Note> notes, String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? success,
    TResult Function(List<Note> notes, String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoteLoadSuccess value) success,
    required TResult Function(_NoteLoadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoteLoadSuccess value)? success,
    TResult? Function(_NoteLoadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoteLoadSuccess value)? success,
    TResult Function(_NoteLoadFailure value)? failure,
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
    required TResult Function(List<Note> notes) success,
    required TResult Function(List<Note> notes, String errorMessage) failure,
  }) {
    return initial(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? success,
    TResult? Function(List<Note> notes, String errorMessage)? failure,
  }) {
    return initial?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? success,
    TResult Function(List<Note> notes, String errorMessage)? failure,
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
    required TResult Function(_NoteLoadSuccess value) success,
    required TResult Function(_NoteLoadFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoteLoadSuccess value)? success,
    TResult? Function(_NoteLoadFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoteLoadSuccess value)? success,
    TResult Function(_NoteLoadFailure value)? failure,
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
abstract class _$$NoteLoadSuccessImplCopyWith<$Res>
    implements $NoteStateCopyWith<$Res> {
  factory _$$NoteLoadSuccessImplCopyWith(_$NoteLoadSuccessImpl value,
          $Res Function(_$NoteLoadSuccessImpl) then) =
      __$$NoteLoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$NoteLoadSuccessImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteLoadSuccessImpl>
    implements _$$NoteLoadSuccessImplCopyWith<$Res> {
  __$$NoteLoadSuccessImplCopyWithImpl(
      _$NoteLoadSuccessImpl _value, $Res Function(_$NoteLoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$NoteLoadSuccessImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$NoteLoadSuccessImpl implements _NoteLoadSuccess {
  const _$NoteLoadSuccessImpl({required final List<Note> notes})
      : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NoteState.success(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteLoadSuccessImpl &&
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
  _$$NoteLoadSuccessImplCopyWith<_$NoteLoadSuccessImpl> get copyWith =>
      __$$NoteLoadSuccessImplCopyWithImpl<_$NoteLoadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) success,
    required TResult Function(List<Note> notes, String errorMessage) failure,
  }) {
    return success(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? success,
    TResult? Function(List<Note> notes, String errorMessage)? failure,
  }) {
    return success?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? success,
    TResult Function(List<Note> notes, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoteLoadSuccess value) success,
    required TResult Function(_NoteLoadFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoteLoadSuccess value)? success,
    TResult? Function(_NoteLoadFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoteLoadSuccess value)? success,
    TResult Function(_NoteLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NoteLoadSuccess implements NoteState {
  const factory _NoteLoadSuccess({required final List<Note> notes}) =
      _$NoteLoadSuccessImpl;

  @override
  List<Note> get notes;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteLoadSuccessImplCopyWith<_$NoteLoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteLoadFailureImplCopyWith<$Res>
    implements $NoteStateCopyWith<$Res> {
  factory _$$NoteLoadFailureImplCopyWith(_$NoteLoadFailureImpl value,
          $Res Function(_$NoteLoadFailureImpl) then) =
      __$$NoteLoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes, String errorMessage});
}

/// @nodoc
class __$$NoteLoadFailureImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteLoadFailureImpl>
    implements _$$NoteLoadFailureImplCopyWith<$Res> {
  __$$NoteLoadFailureImplCopyWithImpl(
      _$NoteLoadFailureImpl _value, $Res Function(_$NoteLoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? errorMessage = null,
  }) {
    return _then(_$NoteLoadFailureImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteLoadFailureImpl implements _NoteLoadFailure {
  const _$NoteLoadFailureImpl(
      {required final List<Note> notes, required this.errorMessage})
      : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NoteState.failure(notes: $notes, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteLoadFailureImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notes), errorMessage);

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteLoadFailureImplCopyWith<_$NoteLoadFailureImpl> get copyWith =>
      __$$NoteLoadFailureImplCopyWithImpl<_$NoteLoadFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) success,
    required TResult Function(List<Note> notes, String errorMessage) failure,
  }) {
    return failure(notes, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Note> notes)? initial,
    TResult? Function(List<Note> notes)? success,
    TResult? Function(List<Note> notes, String errorMessage)? failure,
  }) {
    return failure?.call(notes, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? success,
    TResult Function(List<Note> notes, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(notes, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoteLoadSuccess value) success,
    required TResult Function(_NoteLoadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoteLoadSuccess value)? success,
    TResult? Function(_NoteLoadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoteLoadSuccess value)? success,
    TResult Function(_NoteLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NoteLoadFailure implements NoteState {
  const factory _NoteLoadFailure(
      {required final List<Note> notes,
      required final String errorMessage}) = _$NoteLoadFailureImpl;

  @override
  List<Note> get notes;
  String get errorMessage;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteLoadFailureImplCopyWith<_$NoteLoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
