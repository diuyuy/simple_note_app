import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void showNoNoteToSelectDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text('showNoNoteToSelectDialog.noNoteToSelect'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('showNoNoteToSelectDialog.ok'.tr()),
          ),
        ],
      );
    },
  );
}
