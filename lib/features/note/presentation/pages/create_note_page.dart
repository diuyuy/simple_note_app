import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/core/utils/format_date.dart';

import '../bloc/note_bloc.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({super.key});

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: TextField(
          controller: _titleController,
          decoration: InputDecoration(
            hintText: '타이틀을 입력하세요',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.read<NoteBloc>().add(
                    NoteEvent.createNote(
                      title: _titleController.text,
                      content: _contentController.text,
                      createDate: formatDate(DateTime.now()),
                    ),
                  );
              context.pop();
            },
            child: Text('저장'),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<NoteBloc, NoteState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: TextField(
                controller: _contentController,
              ),
            );
          },
        ),
      ),
    );
  }
}
