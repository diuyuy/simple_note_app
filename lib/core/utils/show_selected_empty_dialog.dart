import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../enum/selected_item.dart';

void showSelectedEmptyDialog(BuildContext context, SelectedItem item) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        //title: Text('NoteSelectionPage.delete'.tr()),
        content: Text(
          'showSelectedEmptyDialog.noItemsSelected'.tr(
            args: [
              item == SelectedItem.note
                  ? 'showSelectedEmptyDialog.notes'.tr()
                  : 'showSelectedEmptyDialog.categories'.tr()
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('showSelectedEmptyDialog.ok'.tr()),
          ),
        ],
      );
    },
  );
}
