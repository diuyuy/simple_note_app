import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/note_card_widget.dart';
import '../../../domain/repositories/note_repository.dart';
import '../../bloc/search_notes_bloc/search_notes_bloc.dart';

class SearchNotePage extends StatelessWidget {
  const SearchNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final repository = GetIt.I<NoteRepository>();

        return SearchNotesBloc(repository)
          ..add(SearchNotesBlocEvent.loadAllNotes());
      },
      child: SearchNoteView(),
    );
  }
}

class SearchNoteView extends StatefulWidget {
  const SearchNoteView({super.key});

  @override
  State<SearchNoteView> createState() => _SearchNoteViewState();
}

class _SearchNoteViewState extends State<SearchNoteView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: TextField(
            controller: _searchController,
            maxLength: 100,
            onChanged: (value) {
              context
                  .read<SearchNotesBloc>()
                  .add(SearchNotesBlocEvent.searched(query: value));
            },
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
              counterText: '',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Column(
            children: [
              BlocBuilder<SearchNotesBloc, SearchNotesState>(
                builder: (context, state) {
                  final filteredNotes = state.notes;

                  return filteredNotes.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              final note = filteredNotes[index];

                              return GestureDetector(
                                onTap: () {
                                  context.push('/read', extra: note.id);
                                },
                                child: NoteCardWidget(
                                  title: note.title,
                                  date: note.updateDate ?? note.createDate,
                                  isFavorite: note.isFavorite,
                                  onTapTrailing: () {
                                    context.read<SearchNotesBloc>().add(
                                          SearchNotesBlocEvent.tapFavorite(
                                            id: note.id,
                                            isFavorite: !note.isFavorite,
                                          ),
                                        );
                                  },
                                ),
                              );
                            },
                            itemCount: filteredNotes.length,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              '일치하는 검색 결과가 없습니다.',
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ),
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
