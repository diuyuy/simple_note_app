import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/format_date.dart';
import '../../../setting/presentation/cubit/app_setting_cubit.dart';
import '../bloc/note_bloc.dart';

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
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('UpdateNotePage.edit'.tr()),
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
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Builder(builder: (context) {
                final appSetting = context.watch<AppSettingCubit>().state;
                final selectedNote = context.select((NoteBloc bloc) => bloc
                    .state.notes
                    .firstWhere((note) => note.id == widget.id));
                _titleController.text = selectedNote.title;
                _contentController.text = selectedNote.content ?? '';

                return Column(
                  children: [
                    TextField(
                      controller: _titleController,
                      style: TextStyle(
                        fontSize: 16.0 + appSetting.fontSize,
                      ),
                      maxLength: 50,
                      onTap: () => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                        hintText: 'UpdateNotePage.title'.tr(),
                        border: InputBorder.none,
                        counterText: '',
                      ),
                    ),
                    const Divider(),
                    TextField(
                      controller: _contentController,
                      maxLines: null,
                      onTap: () => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                        hintText: 'UpdateNotePage.inputContent'.tr(),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
