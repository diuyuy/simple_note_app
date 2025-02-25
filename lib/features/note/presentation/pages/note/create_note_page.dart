import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/features/setting/presentation/bloc/app_setting_bloc.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/format_date.dart';
import '../../../../../core/widgets/app_bar_back_button.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../widgets/note_text_field.dart';

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
          child: Builder(builder: (context) {
            final appSettingState = context.watch<AppSettingBloc>().state;

            return appSettingState.when(
              initial: (appSetting) => const SizedBox.shrink(),
              success: (appSetting) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      NoteTextField(
                        controller: _titleController,
                        maxLines: 2,
                        minLines: 1,
                        maxLength: AppConstants.titleMaxLength,
                        hintText: 'CreateNotePage.title'.tr(),
                        textStyle: TextStyle(
                          fontSize: appSetting.titleFontSize.toDouble(),
                        ),
                      ),
                      const Divider(),
                      NoteTextField(
                        controller: _contentController,
                        hintText: 'CreateNotePage.inputContent'.tr(),
                        maxLines: null,
                        textStyle: TextStyle(
                          fontSize: appSetting.contentFontSize.toDouble(),
                          height: appSetting.textHeight,
                        ),
                      ),
                    ],
                  ),
                );
              },
              failure: (appSetting, errorMessage) => Center(
                child: Text(errorMessage),
              ),
            );
          }),
        ),
      ),
    );
  }
}
