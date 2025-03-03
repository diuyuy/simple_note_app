import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/format_date.dart';
import '../../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../../../../note/presentation/widgets/note_text_field.dart';
import '../../../../setting/presentation/bloc/app_setting_bloc.dart';

class CreateNoteFromCategoryPage extends StatefulWidget {
  const CreateNoteFromCategoryPage({super.key, required this.categoryId});

  final String categoryId;

  @override
  State<CreateNoteFromCategoryPage> createState() =>
      _CreateNoteFromCategoryPageState();
}

class _CreateNoteFromCategoryPageState
    extends State<CreateNoteFromCategoryPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _contentFocusNode = FocusNode();
  String? noteId;

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    _titleFocusNode.dispose();
    _contentFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('CreateNotePage.newNote'.tr()),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
        scrolledUnderElevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              context.read<NoteBloc>().add(
                    NoteEvent.createNote(
                      title: _titleController.text,
                      content: _contentController.text,
                      createDate: formatDate(DateTime.now()),
                      category: widget.categoryId,
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
                return Column(
                  children: [
                    NoteTextField(
                      controller: _titleController,
                      focusNode: _titleFocusNode,
                      maxLines: 2,
                      minLines: 1,
                      maxLength: AppConstants.titleMaxLength,
                      hintText: 'CreateNotePage.title'.tr(),
                      textStyle: TextStyle(
                        fontSize: appSetting.titleFontSize.toDouble(),
                      ),
                    ),
                    const Divider(),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (_contentFocusNode.hasFocus) {
                            _contentFocusNode.requestFocus();
                          }
                        },
                        child: NoteTextField(
                          controller: _contentController,
                          focusNode: _contentFocusNode,
                          hintText: 'CreateNotePage.inputContent'.tr(),
                          maxLines: null,
                          maxLength: AppConstants.contentMaxLength,
                          textStyle: TextStyle(
                            fontSize: appSetting.contentFontSize.toDouble(),
                            height: appSetting.textHeight,
                          ),
                        ),
                      ),
                    ),
                  ],
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
