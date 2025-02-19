import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/core/utils/show_no_note_to_select_dialog.dart';

import '../../../../../core/color/app_colors.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/enum/previous_page.dart';
import '../../../../../core/router/note_selection_args.dart';
import '../../../../../core/router/router_path.dart';
import '../../../../../core/widgets/my_menu_anchor.dart';
import '../../../domain/usecases/note_usecase/load_notes_use_case.dart';
import '../../bloc/note_bloc/note_bloc.dart';
import '../../bloc/search_notes_bloc/search_notes_bloc.dart';
import '../../widgets/search/filtered_note_card_widget.dart';

class SearchNotePage extends StatelessWidget {
  const SearchNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final loadNotesUseCase = GetIt.I<LoadNotesUseCase>();

        return SearchNotesBloc(loadNotesUseCase: loadNotesUseCase)
          ..add(SearchNotesBlocEvent.loadAllNotes());
      },
      child: SearchNoteView(),
    );
  }
}

class SearchNoteView extends StatefulWidget {
  const SearchNoteView({super.key});

  @override
  State<SearchNoteView> createState() => _SearchNotePageState();
}

class _SearchNotePageState extends State<SearchNoteView> {
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
            maxLength: AppConstants.searchMaxLength,
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
              hintText: 'SearchNotePage.hintText'.tr(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  _searchController.clear();
                  context
                      .read<SearchNotesBloc>()
                      .add(SearchNotesBlocEvent.loadAllNotes());
                },
                icon: Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          MyMenuAnchor(menuChildren: buildMenuItemButtonList(context)),
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
                                onLongPress: () {
                                  context.push(
                                    RouterPath.noteSelectionPage,
                                    extra: NoteSelectionArgs(
                                      selectedNotes: [note.id],
                                      previousPage: PreviousPage.search,
                                      bloc: context.read<SearchNotesBloc>(),
                                    ),
                                  );
                                },
                                onTap: () {
                                  context.push(
                                    '/${RouterPath.readNotePage}',
                                    extra: note.id,
                                  );
                                },
                                child: FilteredNoteCardWidget(
                                  title: note.title,
                                  content: note.content ?? '',
                                  query: _searchController.text,
                                  date: note.updateDate ?? note.createDate,
                                  isFavorite: note.isFavorite,
                                  onTapTrailing: () {
                                    context.read<SearchNotesBloc>().add(
                                          SearchNotesBlocEvent.tapFavorite(
                                            id: note.id,
                                            isFavorite: !note.isFavorite,
                                          ),
                                        );
                                    context.read<NoteBloc>().add(
                                          NoteEvent.updateNote(
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
                              _searchController.text.isEmpty
                                  ? 'SearchNotePage.noNoteToSearch'.tr()
                                  : 'SearchNotePage.noResultsFound'.tr(),
                              style: TextStyle(color: AppColors.darkGrey),
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

  List<MenuItemButton> buildMenuItemButtonList(BuildContext context) {
    final filteredNotes = context.watch<SearchNotesBloc>().state.notes;

    return [
      MenuItemButton(
        style: MenuItemButton.styleFrom(
          minimumSize: Size(
            AppConstants.menuAnchorMinWidth.w,
            AppConstants.menuAnchorMinHeight.w,
          ),
        ),
        onPressed: () {
          if (filteredNotes.isEmpty) {
            showNoNoteToSelectDialog(context);
            return;
          }

          context.push(
            RouterPath.noteSelectionPage,
            extra: NoteSelectionArgs(
              selectedNotes: <String>[],
              previousPage: PreviousPage.search,
              bloc: context.read<SearchNotesBloc>(),
            ),
          );
        },
        child: Text('SearchNotePage.select'.tr()),
      ),
      MenuItemButton(
        onPressed: () {
          if (filteredNotes.isEmpty) {
            showNoNoteToSelectDialog(context);
            return;
          }

          context.push(
            RouterPath.noteSelectionPage,
            extra: NoteSelectionArgs(
              selectedNotes: filteredNotes.map((note) => note.id).toList(),
              previousPage: PreviousPage.search,
              bloc: context.read<SearchNotesBloc>(),
            ),
          );
        },
        child: Text('SearchNotePage.selectAll'.tr()),
      ),
    ];
  }
}
