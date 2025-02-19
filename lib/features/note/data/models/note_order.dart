import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_order.freezed.dart';

@freezed
class NoteOrder with _$NoteOrder {
  const factory NoteOrder({
    @Default(<String>[]) List<String> order,
  }) = _NoteOrder;
}
