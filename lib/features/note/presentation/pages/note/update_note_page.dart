import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/format_date.dart';
import '../../../../../core/widgets/note_text_field.dart';
import '../../../domain/entities/note.dart';
import '../../bloc/note_bloc/note_bloc.dart';

class UpdateNotePage extends StatefulWidget {
  const UpdateNotePage({super.key, required this.id});

  final String id;

  @override
  State<UpdateNotePage> createState() => _UpdateNotePageState();
}

class _UpdateNotePageState extends State<UpdateNotePage> {
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
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.close, size: 28),
        ),
        title: Text('UpdateNotePage.edit'.tr()),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: IconButton(
              onPressed: () {
                context.read<NoteBloc>().add(
                      NoteEvent.updateNote(
                        id: widget.id,
                        title: _titleController.text,
                        content: _contentController.text,
                        updateDate: formatDate(DateTime.now()),
                      ),
                    );
                context.pop();
              },
              icon: Icon(Icons.check, size: 28),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: SingleChildScrollView(
            child: Builder(builder: (context) {
              final selectedNote = context.select(
                (NoteBloc bloc) => bloc.state.notes.firstWhere(
                  (note) => note.id == widget.id,
                  orElse: () => Note(
                    id: '',
                    title: '',
                    createDate: '',
                  ),
                ),
              );

              _titleController.text = selectedNote.title.isNotEmpty
                  ? selectedNote.title
                  : AppConstants.untitled.tr();
              _contentController.text = selectedNote.content ?? '';

              return Column(
                children: [
                  NoteTextField(
                    controller: _titleController,
                    maxLines: 1,
                    maxLength: AppConstants.titleMaxLength,
                    hintText: 'UpdateNotePage.title'.tr(),
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Divider(),
                  NoteTextField(
                    controller: _contentController,
                    hintText: 'UpdateNotePage.inputContent'.tr(),
                    maxLines: null,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
