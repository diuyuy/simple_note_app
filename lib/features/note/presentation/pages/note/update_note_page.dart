import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/features/setting/presentation/bloc/app_setting_bloc.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/format_date.dart';
import '../../../domain/entities/note.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../widgets/note_text_field.dart';

class UpdateNotePage extends StatefulWidget {
  const UpdateNotePage({super.key, required this.id});

  final String id;

  @override
  State<UpdateNotePage> createState() => _UpdateNotePageState();
}

class _UpdateNotePageState extends State<UpdateNotePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _contentFocusNode = FocusNode();
  late final bool isAutoSave;

  @override
  void initState() {
    super.initState();
    isAutoSave = context.read<AppSettingBloc>().state.appSetting.isAutoSave;
  }

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
        leading: isAutoSave
            ? null
            : IconButton(
                onPressed: () => context.pop(),
                icon: Icon(
                  Icons.close,
                  size: 28,
                ),
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

            final appSetting =
                context.select((AppSettingBloc bloc) => bloc.state.appSetting);

            _titleController.text = selectedNote.title.isNotEmpty
                ? selectedNote.title
                : AppConstants.untitled.tr();
            _contentController.text = selectedNote.content ?? '';

            return GestureDetector(
              onTap: () {
                if (!_contentFocusNode.hasFocus) {
                  _contentFocusNode.requestFocus();
                }
              },
              child: Column(
                children: [
                  NoteTextField(
                    controller: _titleController,
                    focusNode: _titleFocusNode,
                    maxLines: 2,
                    minLines: 1,
                    maxLength: AppConstants.titleMaxLength,
                    onChanged: (title) {
                      if (isAutoSave) {
                        context.read<NoteBloc>().add(
                              NoteEvent.autoUpdateNote(
                                id: widget.id,
                                title: title,
                              ),
                            );
                      }
                    },
                    hintText: 'UpdateNotePage.title'.tr(),
                    textStyle: TextStyle(
                      fontSize: appSetting.titleFontSize.toDouble(),
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (!_contentFocusNode.hasFocus) {
                          _contentFocusNode.requestFocus();
                        }
                      },
                      child: NoteTextField(
                        controller: _contentController,
                        focusNode: _contentFocusNode,
                        hintText: 'UpdateNotePage.inputContent'.tr(),
                        maxLines: null,
                        maxLength: AppConstants.contentMaxLength,
                        onChanged: (content) {
                          if (isAutoSave) {
                            context.read<NoteBloc>().add(
                                  NoteEvent.autoUpdateNote(
                                    id: widget.id,
                                    content: content,
                                  ),
                                );
                          }
                        },
                        textStyle: TextStyle(
                          fontSize: appSetting.contentFontSize.toDouble(),
                          height: appSetting.textHeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
