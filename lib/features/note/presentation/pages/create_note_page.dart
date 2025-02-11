import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/const_values.dart';
import '../../../../core/utils/format_date.dart';
import '../../../setting/presentation/cubit/app_setting_cubit.dart';
import '../bloc/note_bloc/note_bloc.dart';
import '../widgets/my_text_field.dart';

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
                  MyTextField(
                    controller: _titleController,
                    maxLines: 1,
                    maxLength: ConstValues.titleMaxLength,
                    hintText: 'CreateNotePage.title'.tr(),
                    textStyle: TextStyle(
                      fontSize:
                          ConstValues.titleDefaulFontSize + appSetting.fontSize,
                    ),
                  ),
                  const Divider(),
                  MyTextField(
                    controller: _contentController,
                    hintText: 'CreateNotePage.inputContent'.tr(),
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
