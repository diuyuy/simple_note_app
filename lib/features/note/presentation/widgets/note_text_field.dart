import 'package:flutter/material.dart';

class NoteTextField extends StatelessWidget {
  const NoteTextField({
    super.key,
    required this.controller,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.textStyle,
    required this.hintText,
  });

  final TextEditingController controller;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      style: textStyle,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        border: InputBorder.none,
        counterText: '',
      ),
    );
  }
}
