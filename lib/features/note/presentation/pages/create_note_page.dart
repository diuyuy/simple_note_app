import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/format_date.dart';
import '../../../setting/presentation/cubit/app_setting_cubit.dart';
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
            child: Builder(builder: (context) {
              final appSetting = context.watch<AppSettingCubit>().state;

              return Column(
                children: [
                  TextField(
                    controller: _titleController,
                    style: TextStyle(
                      fontSize: 20.0 + appSetting.fontSize,
                    ),
                    decoration: InputDecoration(
                      hintText: 'CreateNotePage.title'.tr(),
                      border: InputBorder.none,
                    ),
                  ),
                  const Divider(),
                  TextField(
                    controller: _contentController,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'CreateNotePage.inputContent'.tr(),
                      border: InputBorder.none,
                    ),
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
