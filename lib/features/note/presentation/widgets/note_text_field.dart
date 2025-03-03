import 'package:flutter/material.dart';

class NoteTextField extends StatelessWidget {
  const NoteTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.textStyle,
    required this.hintText,
    this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final String hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      focusNode: focusNode,
      style: textStyle,
      onChanged: onChanged,
      decoration: InputDecoration(
        //contentPadding: EdgeInsets.zero,
        isDense: true,
        hintText: hintText,
        border: InputBorder.none,
        counterText: '',
      ),
    );
  }
}
