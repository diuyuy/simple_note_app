// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteOrder {
  List<String> get order => throw _privateConstructorUsedError;

  /// Create a copy of NoteOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteOrderCopyWith<NoteOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteOrderCopyWith<$Res> {
  factory $NoteOrderCopyWith(NoteOrder value, $Res Function(NoteOrder) then) =
      _$NoteOrderCopyWithImpl<$Res, NoteOrder>;
  @useResult
  $Res call({List<String> order});
}

/// @nodoc
class _$NoteOrderCopyWithImpl<$Res, $Val extends NoteOrder>
    implements $NoteOrderCopyWith<$Res> {
  _$NoteOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteOrderImplCopyWith<$Res>
    implements $NoteOrderCopyWith<$Res> {
  factory _$$NoteOrderImplCopyWith(
          _$NoteOrderImpl value, $Res Function(_$NoteOrderImpl) then) =
      __$$NoteOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> order});
}

/// @nodoc
class __$$NoteOrderImplCopyWithImpl<$Res>
    extends _$NoteOrderCopyWithImpl<$Res, _$NoteOrderImpl>
    implements _$$NoteOrderImplCopyWith<$Res> {
  __$$NoteOrderImplCopyWithImpl(
      _$NoteOrderImpl _value, $Res Function(_$NoteOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$NoteOrderImpl(
      order: null == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$NoteOrderImpl implements _NoteOrder {
  const _$NoteOrderImpl({final List<String> order = const <String>[]})
      : _order = order;

  final List<String> _order;
  @override
  @JsonKey()
  List<String> get order {
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order);
  }

  @override
  String toString() {
    return 'NoteOrder(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteOrderImpl &&
            const DeepCollectionEquality().equals(other._order, _order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_order));

  /// Create a copy of NoteOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteOrderImplCopyWith<_$NoteOrderImpl> get copyWith =>
      __$$NoteOrderImplCopyWithImpl<_$NoteOrderImpl>(this, _$identity);
}

abstract class _NoteOrder implements NoteOrder {
  const factory _NoteOrder({final List<String> order}) = _$NoteOrderImpl;

  @override
  List<String> get order;

  /// Create a copy of NoteOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteOrderImplCopyWith<_$NoteOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
