import 'package:flutter/material.dart';

import '../../features/note_category/domain/entities/note_category.dart';

Color getCategoryColor(NoteCategory category) {
  return Color.from(
    alpha: category.categoryColorA,
    red: category.categoryColorR,
    green: category.categoryColorG,
    blue: category.categoryColorB,
  );
}
