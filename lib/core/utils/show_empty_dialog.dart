import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void showEmptyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text('showEmptyDialog.noNoteToSelect'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('showEmptyDialog.ok'.tr()),
          ),
        ],
      );
    },
  );
}
