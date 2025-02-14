import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/note_card_widget.dart';
import '../../bloc/note_bloc/note_bloc.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('FavoritesPage.favorites'.tr()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: BlocBuilder<NoteBloc, NoteState>(
            builder: (context, state) {
              final favortes =
                  state.notes.where((note) => note.isFavorite).toList();

              return ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.push(
                        '/read',
                        extra: favortes[index].id,
                      );
                    },
                    child: NoteCardWidget(
                      title: favortes[index].title,
                      date: favortes[index].updateDate ??
                          favortes[index].createDate,
                      isFavorite: favortes[index].isFavorite,
                      onTapTrailing: () {
                        context.read<NoteBloc>().add(
                              NoteEvent.updateNote(
                                id: favortes[index].id,
                                isFavorite: !favortes[index].isFavorite,
                              ),
                            );
                      },
                    ),
                  );
                },
                itemCount: favortes.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
