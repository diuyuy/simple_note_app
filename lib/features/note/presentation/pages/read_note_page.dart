import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../setting/presentation/cubit/app_setting_cubit.dart';
import '../bloc/note_bloc.dart';

class ReadNotePage extends StatefulWidget {
  const ReadNotePage({super.key, required this.noteId});

  final String noteId;

  @override
  State<ReadNotePage> createState() => _ReadNotePageState();
}

class _ReadNotePageState extends State<ReadNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: SingleChildScrollView(
            child: Builder(
              builder: (context) {
                final appSetting = context.watch<AppSettingCubit>().state;
                final selectedNote = context
                    .watch<NoteBloc>()
                    .state
                    .notes
                    .firstWhere((note) => note.id == widget.noteId);

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      selectedNote.title,
                      style: TextStyle(fontSize: 16.0 + appSetting.fontSize),
                    ),
                    const Divider(),
                    Text(selectedNote.content ?? ''),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
