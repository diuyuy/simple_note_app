import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_bar_back_button.dart';
import '../../../note/presentation/bloc/note_bloc/note_bloc.dart';
import '../../../note/presentation/widgets/note_card_widget.dart';

class CategoryNotesPage extends StatelessWidget {
  const CategoryNotesPage({
    super.key,
    required this.id,
    required this.categoryName,
  });

  final String id;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: Text(
          categoryName,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final notes = context
                  .select((NoteBloc bloc) => bloc.state.notes)
                  .where((note) => note.category == categoryName)
                  .toList();

              return ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];

                  return NoteCardWidget(
                    title: note.title,
                    date: note.updateDate ?? note.createDate,
                    isFavorite: note.isFavorite,
                    onTapTrailing: () {
                      context.read<NoteBloc>().add(
                            NoteEvent.updateNote(
                              id: note.id,
                              isFavorite: !note.isFavorite,
                            ),
                          );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
