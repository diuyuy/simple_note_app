import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../enum/selected_item.dart';

void showNoItemToSelectDialog(BuildContext context,
    [SelectedItem item = SelectedItem.note]) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(item == SelectedItem.note
            ? 'showNoItemToSelectDialog.noNoteToSelect'.tr()
            : 'There are no categories to select.'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('showNoItemToSelectDialog.ok'.tr()),
          ),
        ],
      );
    },
  );
}
