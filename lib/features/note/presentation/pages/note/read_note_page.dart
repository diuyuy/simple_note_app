import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/core/enum/share_option.dart';
import 'package:simple_note_app/core/utils/dialog_and_snackbar/show_snack_bar.dart';
import 'package:simple_note_app/core/utils/helper/share_file_helper/share_file_helper.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/router/router_path.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_item_button.dart';
import '../../../../setting/presentation/bloc/app_setting_bloc.dart';
import '../../../domain/entities/note.dart';
import '../../bloc/note_bloc/note_bloc.dart';

class ReadNotePage extends StatelessWidget {
  const ReadNotePage({super.key, required this.noteId});

  final String noteId;

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.path;

    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('ReadNotePage.note'.tr()),
        centerTitle: true,
        actions: [
          BlocBuilder<NoteBloc, NoteState>(
            builder: (context, state) {
              final selectedNote = state.notes.firstWhere(
                (note) => note.id == noteId,
                orElse: () => Note(
                  id: '',
                  title: '',
                  createDate: '',
                ),
              );

              return IconButton(
                onPressed: () {
                  context.read<NoteBloc>().add(
                        NoteEvent.updateNote(
                          id: noteId,
                          isFavorite: !selectedNote.isFavorite,
                        ),
                      );
                },
                icon: Icon(
                  selectedNote.isFavorite ? Icons.star : Icons.star_border,
                  color: Theme.of(context).colorScheme.primary,
                ),
              );
            },
          ),
          IconButton(
            onPressed: () {
              context.push(
                '$currentPath/${RouterPath.updateNotePage}',
                extra: noteId,
              );
            },
            icon: Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          BlocBuilder<NoteBloc, NoteState>(
            builder: (context, state) {
              final selectedNote = state.notes.firstWhere(
                (note) => note.id == noteId,
                orElse: () => Note(
                  id: '',
                  title: '',
                  createDate: '',
                ),
              );

              return MenuAnchor(
                menuChildren: getMenuItemButtonList(context, selectedNote),
                builder: (context, controller, child) {
                  return IconButton(
                    onPressed: () {
                      if (controller.isOpen) {
                        controller.close();
                      } else {
                        controller.open();
                      }
                    },
                    icon: Icon(Icons.more_vert),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: SingleChildScrollView(
            child: Builder(
              builder: (context) {
                final noteState = context.watch<NoteBloc>().state;
                final appSetting = context
                    .select((AppSettingBloc bloc) => bloc.state.appSetting);

                final selectedNote = noteState.notes.firstWhere(
                  (note) => note.id == noteId,
                  orElse: () => Note(id: '', title: '', createDate: ''),
                );

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        selectedNote.title.isNotEmpty
                            ? selectedNote.title
                            : AppConstants.untitled.tr(),
                        //maxLines: 2,
                        style: TextStyle(
                          fontSize: appSetting.titleFontSize.toDouble(),
                        ),
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        selectedNote.content ?? '',
                        style: TextStyle(
                          fontSize: appSetting.contentFontSize.toDouble(),
                          height: appSetting.textHeight,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<bool?> showDeleteDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('ReadNotePage.delete'.tr()),
          content: Text('ReadNotePage.deleteDialogConent'.tr()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text('ReadNotePage.cancel'.tr()),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('ReadNotePage.ok'.tr()),
            )
          ],
        );
      },
    );
  }

  List<Widget> getMenuItemButtonList(BuildContext context, Note selectedNote) {
    final appSetting =
        context.select((AppSettingBloc bloc) => bloc.state.appSetting);

    return [
      MyMenuItemButton(
        onPressed: () {
          context.push(RouterPath.appSettingPage);
        },
        child: Text('Settings'.tr()),
      ),
      //MyMenuItemButton(onPressed: (){}, child: Text('ReadNotePage.share'.tr()))
      SubmenuButton(
        style: SubmenuButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        menuChildren: [
          MyMenuItemButton(
            onPressed: () async {
              try {
                await ShareFileHelper.shareNote(
                  title: selectedNote.title,
                  content: selectedNote.content ?? '',
                  option: ShareOption.text,
                );
              } catch (e) {
                if (context.mounted) {
                  showSnackBar(
                      context, 'An error occurred. Please try again.'.tr());
                }
              }
            },
            child: Text(
              'Text',
            ),
          ),
          MyMenuItemButton(
            onPressed: () async {
              try {
                await ShareFileHelper.shareNote(
                  title: selectedNote.title,
                  content: selectedNote.content ?? '',
                  option: ShareOption.txt,
                );
              } catch (e) {
                if (context.mounted) {
                  showSnackBar(
                      context, 'An error occurred. Please try again.'.tr());
                }
              }
            },
            child: Text(
              'TXT',
            ),
          ),
          MyMenuItemButton(
            onPressed: () async {
              try {
                await ShareFileHelper.shareNote(
                  title: selectedNote.title,
                  content: selectedNote.content ?? '',
                  titleFontSize: appSetting.titleFontSize.toDouble(),
                  contentFontSize: appSetting.contentFontSize.toDouble(),
                  option: ShareOption.pdf,
                );
              } catch (e) {
                if (context.mounted) {
                  showSnackBar(
                      context, 'An error occurred. Please try again.'.tr());
                }
              }
            },
            child: Text(
              'PDF',
            ),
          ),
        ],
        child: Text('ReadNotePage.share'.tr()),
      ),
      MenuItemButton(
        onPressed: () async {
          final isConfirm = await showDeleteDialog(context);
          if (isConfirm == true) {
            if (context.mounted) {
              context
                  .read<NoteBloc>()
                  .add(NoteEvent.deleteNote(deletedNote: selectedNote.id));

              context.pop();
            }
          }
        },
        child: Text('ReadNotePage.delete'.tr()),
      ),
    ];
  }
}
