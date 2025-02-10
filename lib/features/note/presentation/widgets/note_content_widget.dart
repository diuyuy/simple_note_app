import 'package:flutter/material.dart';

class NoteContentWidget extends StatefulWidget {
  const NoteContentWidget({super.key});

  @override
  State<NoteContentWidget> createState() => _NoteContentWidgetState();
}

class _NoteContentWidgetState extends State<NoteContentWidget> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
