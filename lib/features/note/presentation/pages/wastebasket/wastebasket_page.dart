import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/router/note_selection_args.dart';
import '../../../../../core/router/router_path.dart';
import '../../../../../core/utils/show_alert_dialog.dart';
import '../../../../../core/utils/show_empty_dialog.dart';
import '../../../../../core/widgets/my_menu_anchor.dart';
import '../../../domain/usecases/wastebaseket_usecase/delete_permanently_user_case.dart';
import '../../../domain/usecases/wastebaseket_usecase/load_wastes_use_case.dart';
import '../../../domain/usecases/wastebaseket_usecase/restore_note_user_case.dart';
import '../../bloc/wastebasket_bloc/waste_basket_bloc.dart';
import '../../widgets/empty_note_text_widget.dart';
import '../../widgets/note_card_widget.dart';

class WastebasketPage extends StatelessWidget {
  const WastebasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final getIt = GetIt.instance;
        final loadWastesUseCase = getIt<LoadWastesUseCase>();
        final restoreNoteUseCase = getIt<RestoreNoteUserCase>();
        final deletePermanentlyUseCase = getIt<DeletePermanentlyUserCase>();

        return WasteBasketBloc(
          loadWastesUseCase: loadWastesUseCase,
          restoreNoteUseCase: restoreNoteUseCase,
          deletePermanentlyUseCase: deletePermanentlyUseCase,
        )..add(WasteBasketEvent.loadWastes());
      },
      child: WastebasketView(),
    );
  }
}

class WastebasketView extends StatelessWidget {
  const WastebasketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text('WastebasketPage.trash'.tr()),
        centerTitle: true,
        actions: [
          MyMenuAnchor(menuChildren: buildMenuItemButtonList(context)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final wastes = context.watch<WasteBasketBloc>().state.wastes;

              return wastes.isNotEmpty
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        final waste = wastes[index];

                        return GestureDetector(
                          onLongPress: () {
                            context.push(
                              RouterPath.noteSelectionPage,
                              extra: NoteSelectionArgs(
                                selectedNotes: [waste.id],
                                previousPage: PreviousPage.trash,
                                bloc: context.read<WasteBasketBloc>(),
                              ),
                            );
                          },
                          child: NoteCardWidget(
                            title: waste.title,
                            date: waste.updateDate ?? waste.createDate,
                            isFavorite: waste.isFavorite,
                            onTapTrailing: () {},
                          ),
                        );
                      },
                      itemCount: wastes.length,
                    )
                  : EmptyNoteTextWidget(
                      content: 'WastebasketPage.trashIsEmpty'.tr());
            },
          ),
        ),
      ),
    );
  }

  List<MenuItemButton> buildMenuItemButtonList(BuildContext context) {
    final wastes = context.watch<WasteBasketBloc>().state.wastes;

    return [
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          if (wastes.isEmpty) {
            showEmptyDialog(context);
            return;
          }
          context.push(
            RouterPath.noteSelectionPage,
            extra: NoteSelectionArgs(
              selectedNotes: <String>[],
              previousPage: PreviousPage.trash,
              bloc: context.read<WasteBasketBloc>(),
            ),
          );
        },
        child: Text('WastebasketPage.select'.tr()),
      ),
      MenuItemButton(
        onPressed: () {
          if (wastes.isEmpty) {
            showEmptyDialog(context);
            return;
          }

          context.push(
            RouterPath.noteSelectionPage,
            extra: NoteSelectionArgs(
              selectedNotes: wastes.map((waste) => waste.id).toList(),
              previousPage: PreviousPage.trash,
              bloc: context.read<WasteBasketBloc>(),
            ),
          );
        },
        child: Text('WastebasketPage.selectAll'.tr()),
      ),
      MenuItemButton(
        onPressed: () async {
          if (wastes.isEmpty) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('WastebasketPage.trashIsAlreadyEmpty'.tr()),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('WastebasketPage.ok'.tr()),
                    ),
                  ],
                );
              },
            );
            return;
          }

          final isConfirm = await showAlertDialog(
                context: context,
                title: 'WastebasketPage.emptyTrash'.tr(),
                content: 'WastebasketPage.emptyTrashDialogContent'.tr(),
              ) ??
              false;

          if (isConfirm) {
            if (context.mounted) {
              for (var waste in wastes) {
                context
                    .read<WasteBasketBloc>()
                    .add(WasteBasketEvent.deletePermanently(id: waste.id));
              }
            }
          }
        },
        child: Text('WastebasketPage.emptyTrash'.tr()),
      ),
    ];
  }
}
