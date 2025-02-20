import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_category_model.freezed.dart';

@freezed
class NoteCategoryModel with _$NoteCategoryModel {
  const factory NoteCategoryModel({
    required String id,
    required String categoryName,
    required int iconCode,
    required double categoryColorA,
    required double categoryColorR,
    required double categoryColorG,
    required double categoryColorB,
  }) = _NoteCategoryModel;
}
