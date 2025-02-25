import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/enum/selected_item.dart';
import '../../../../../core/utils/dialog_and_snackbar/show_alert_dialog.dart';
import '../../../../../core/utils/dialog_and_snackbar/show_selected_empty_dialog.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_anchor.dart';
import '../../../../../core/widgets/menu_anchor/my_menu_item_button.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../bloc/wastebasket_bloc/waste_basket_bloc.dart';
import '../../widgets/selection/select_note_widget.dart';

class WastebasketSelectionPage extends StatefulWidget {
  const WastebasketSelectionPage({super.key, required this.selectedWastes});

  final List<String> selectedWastes;

  @override
  State<WastebasketSelectionPage> createState() =>
      _WastebasketSelectionPageState();
}

class _WastebasketSelectionPageState extends State<WastebasketSelectionPage> {
  late List<String> selectedWastes;

  @override
  void initState() {
    super.initState();
    selectedWastes = widget.selectedWastes;
  }

  void onTapNoteSelectionWidget(String id) {
    setState(() {
      if (selectedWastes.contains(id)) {
        selectedWastes.remove(id);
      } else {
        selectedWastes.add(id);
      }
    });
  }

  void selectAll(Iterable<String> allWastes) {
    setState(() {
      selectedWastes.clear();
      selectedWastes.addAll(allWastes);
    });
  }

  void deselectAll() {
    setState(() {
      selectedWastes.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const AppBarBackButton(),
        title: Text('Select'.tr()),
        actions: [
          Builder(builder: (context) {
            final wastes = context.watch<WasteBasketBloc>().state.wastes;

            return TextButton(
              onPressed: () {
                selectAll(wastes.map((waste) => waste.id));
              },
              child: Text('Select All'.tr()),
            );
          }),
          TextButton(
            onPressed: deselectAll,
            child: Text('Deselect All'.tr()),
          ),
          BlocListener<WasteBasketBloc, WasteBasketState>(
            listenWhen: (previous, current) {
              return current.when(
                initial: (wastes, isAfterRestore) => false,
                success: (wastes, isAfterRestore) => isAfterRestore,
                failure: (wastes, isAfterRestore, errorMessage) => false,
              );
            },
            listener: (context, state) {
              context.read<NoteBloc>().add(NoteEvent.loadNotes());
              context.pop();
            },
            child: MyMenuAnchor(menuChildren: buildMenuItemButtonList(context)),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Builder(
            builder: (context) {
              final wastebasketState = context.watch<WasteBasketBloc>().state;

              return wastebasketState.when(
                initial: (wastes, isAfterRestore) => const SizedBox.shrink(),
                success: (wastes, isAfterRestore) {
                  return ListView(
                    children: wastes.map((waste) {
                      return SelectNoteWidget(
                        isSelected: selectedWastes.contains(waste.id),
                        id: waste.id,
                        title: waste.title,
                        date: waste.updateDate ?? waste.createDate,
                        isFavorite: waste.isFavorite,
                        previousPage: PreviousPage.trash,
                        onTap: onTapNoteSelectionWidget,
                      );
                    }).toList(),
                  );
                },
                failure: (wastes, isAfterRestore, errorMessage) => Center(
                  child: Text(errorMessage),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> buildMenuItemButtonList(BuildContext context) {
    return [
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          if (selectedWastes.isEmpty) {
            showSelectedEmptyDialog(context, SelectedItem.note);
            return;
          }
          context.read<WasteBasketBloc>().add(
                WasteBasketEvent.restoreNotes(restoredNotes: selectedWastes),
              );
        },
        child: Text('Restore'.tr()),
      ),
      MyMenuItemButton(
        onPressed: () async {
          if (selectedWastes.isEmpty) {
            showSelectedEmptyDialog(context, SelectedItem.note);
            return;
          }
          final isConfirm = await showAlertDialog(
                context: context,
                title: 'NoteSelectionPage.permanentlyDelete'.tr(),
                content: 'NoteSelectionPage.permanentlyDeleteDialogContent'
                    .tr(args: [selectedWastes.length.toString()]),
              ) ??
              false;
          if (isConfirm) {
            if (context.mounted) {
              context.read<WasteBasketBloc>().add(
                    WasteBasketEvent.deletePermanently(noteIds: selectedWastes),
                  );
              context.pop();
            }
          }
        },
        child: Text('Permanently Delete'.tr()),
      ),
    ];
  }
}
