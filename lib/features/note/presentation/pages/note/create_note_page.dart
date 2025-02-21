import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/format_date.dart';
import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../../../../core/widgets/note_text_field.dart';
import '../../bloc/note_bloc/note_bloc.dart';

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
        leading: const AppBarBackButton(),
        title: Text('CreateNotePage.newNote'.tr()),
        centerTitle: true,
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
            child: Text('CreateNotePage.save'.tr()),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NoteTextField(
                  controller: _titleController,
                  maxLines: 1,
                  maxLength: AppConstants.titleMaxLength,
                  hintText: 'CreateNotePage.title'.tr(),
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                ),
                const Divider(),
                NoteTextField(
                  controller: _contentController,
                  hintText: 'CreateNotePage.inputContent'.tr(),
                  maxLines: null,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
