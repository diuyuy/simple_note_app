import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/router/note_selection_args.dart';
import '../../../../../core/router/router_path.dart';
import '../../../../../core/widgets/my_menu_anchor.dart';
import '../../bloc/wastebasket_bloc/waste_basket_bloc.dart';
import '../../widgets/note_card_widget.dart';

class WastebasketPage extends StatelessWidget {
  const WastebasketPage({super.key});

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
          MyMenuAnchor(menuChildren: []),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final wastes = context.watch<WasteBasketBloc>().state.wastes;

              return ListView.builder(
                itemBuilder: (context, index) {
                  final waste = wastes[index];

                  return GestureDetector(
                    onLongPress: () {
                      context.push(
                        RouterPath.noteSelectionPage,
                        extra: NoteSelectionArgs(
                          selectedNotes: [waste.id],
                          previousPage: PreviousPage.trash,
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
              );
            },
          ),
        ),
      ),
    );
  }
}
