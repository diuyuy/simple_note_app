import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/widgets/my_menu_anchor.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../bloc/search_notes_bloc/search_notes_bloc.dart';
import '../../bloc/wastebasket_bloc/waste_basket_bloc.dart';
import '../../widgets/selection/select_note_widget.dart';

class NoteSelectionPage extends StatefulWidget {
  const NoteSelectionPage({
    super.key,
    required this.selectedNotes,
    required this.previousPage,
  });

  final List<String> selectedNotes;
  final PreviousPage previousPage;

  @override
  State<NoteSelectionPage> createState() => _NoteSelectionPageState();
}

class _NoteSelectionPageState extends State<NoteSelectionPage> {
  late List<String> selected;

  @override
  void initState() {
    super.initState();
    selected = widget.selectedNotes;
  }

  void onTapCheckIcon(String id) {
    setState(() {
      if (selected.contains(id)) {
        selected.remove(id);
      } else {
        selected.add(id);
      }
    });
  }

  void cancelSelect() {
    setState(() {
      selected.clear();
    });
  }

  void slectAll(Iterable<String> allNotes) {
    setState(() {
      selected.addAll(allNotes);
    });
  }

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
        title: Text('NoteSelectionPage.select'.tr()),
        actions: [
          TextButton(
            onPressed: () {
              final notes = switch (widget.previousPage) {
                PreviousPage.note => context.read<NoteBloc>().state.notes,
                PreviousPage.favorite => context
                    .read<NoteBloc>()
                    .state
                    .notes
                    .where((note) => note.isFavorite)
                    .toList(),
                PreviousPage.search =>
                  context.read<SearchNotesBloc>().state.notes,
                PreviousPage.trash =>
                  context.read<WasteBasketBloc>().state.wastes,
              };

              slectAll(notes.map((note) => note.id));
            },
            child: Text('NoteSelectionPage.selectAll'.tr()),
          ),
          TextButton(
            onPressed: () {
              cancelSelect();
            },
            child: Text('NoteSelectionPage.deselectAll'.tr()),
          ),
          MyMenuAnchor(menuChildren: []),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Builder(
            builder: (context) {
              final notes = switch (widget.previousPage) {
                PreviousPage.note => context.watch<NoteBloc>().state.notes,
                PreviousPage.favorite => context
                    .watch<NoteBloc>()
                    .state
                    .notes
                    .where((note) => note.isFavorite)
                    .toList(),
                PreviousPage.search =>
                  context.watch<SearchNotesBloc>().state.notes,
                PreviousPage.trash =>
                  context.watch<WasteBasketBloc>().state.wastes,
              };

              return SingleChildScrollView(
                child: Column(
                  children: notes.map((note) {
                    return SelectNoteWidget(
                      isSelected: selected.contains(note.id),
                      id: note.id,
                      title: note.title,
                      date: note.updateDate ?? note.createDate,
                      isFavorite: note.isFavorite,
                      onTapCheckIcon: onTapCheckIcon,
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
