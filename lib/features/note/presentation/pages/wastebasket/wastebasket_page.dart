import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/my_menu_anchor.dart';
import '../../../domain/usecases/wastebaseket_usecase/delete_permanently_user_case.dart';
import '../../../domain/usecases/wastebaseket_usecase/load_wastes_use_case.dart';
import '../../../domain/usecases/wastebaseket_usecase/restore_note_user_case.dart';
import '../../bloc/wastebasket_bloc/waste_basket_bloc.dart';
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

                  return NoteCardWidget(
                    title: waste.title,
                    date: waste.updateDate ?? waste.createDate,
                    isFavorite: waste.isFavorite,
                    onTapTrailing: () {},
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
