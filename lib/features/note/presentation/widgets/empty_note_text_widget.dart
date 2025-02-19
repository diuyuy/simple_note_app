import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

class EmptyNoteTextWidget extends StatelessWidget {
  const EmptyNoteTextWidget({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: AppConstants.emptyNoteTextFontSize,
        ),
      ),
    );
  }
}
