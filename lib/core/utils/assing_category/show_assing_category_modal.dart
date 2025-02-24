import 'package:flutter/material.dart';

import '../../../features/note/presentation/widgets/selection/assign_category_bottom_sheet.dart';

Future<String?> showAssignCategoryModal(
    BuildContext context, String? currentCategory) async {
  return await showModalBottomSheet<String>(
    context: context,
    builder: (context) => AssignCategoryBottomSheet(
      currentCategory: currentCategory,
    ),
  );
}
