import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/note/presentation/bloc/search_notes_bloc/search_notes_bloc.dart';
import '../../features/note/presentation/bloc/wastebasket_bloc/waste_basket_bloc.dart';
import '../../features/note/presentation/pages/favorite/favorites_page.dart';
import '../../features/note/presentation/pages/home_page.dart';
import '../../features/note/presentation/pages/note/create_note_page.dart';
import '../../features/note/presentation/pages/note/read_note_page.dart';
import '../../features/note/presentation/pages/note/update_note_page.dart';
import '../../features/note/presentation/pages/reorder/reorder_note_page.dart';
import '../../features/note/presentation/pages/search/search_note_page.dart';
import '../../features/note/presentation/pages/selection/note_selection_page.dart';
import '../../features/note/presentation/pages/wastebasket/wastebasket_page.dart';
import '../enum/previous_page.dart';
import 'note_selection_args.dart';
import 'router_path.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => buildFadeTransitionPage(
        context: context,
        state: state,
        child: const HomePage(),
      ),
      routes: [
        GoRoute(
          path: RouterPath.createNotePage,
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: CreateNotePage(),
          ),
        ),
        GoRoute(
          path: RouterPath.favoritesPage,
          pageBuilder: (context, state) {
            return buildFadeTransitionPage(
              context: context,
              state: state,
              child: FavoritesPage(),
            );
          },
        ),
        GoRoute(
          path: RouterPath.readNotePage,
          pageBuilder: (context, state) {
            final noteId = state.extra as String;

            return buildFadeTransitionPage(
              context: context,
              state: state,
              child: ReadNotePage(noteId: noteId),
            );
          },
          routes: [
            GoRoute(
              path: RouterPath.updateNotePage,
              pageBuilder: (context, state) {
                final noteId = state.extra as String;

                return buildFadeTransitionPage(
                  context: context,
                  state: state,
                  child: UpdateNotePage(id: noteId),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: RouterPath.searchNotePage,
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: const SearchNotePage(),
          ),
        ),
        GoRoute(
          path: RouterPath.wastebasketPage,
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: WastebasketPage(),
          ),
        ),
        GoRoute(
          path: RouterPath.reorderNotePage,
          pageBuilder: (context, state) {
            final currentOrder = state.extra as List<String>;

            return buildFadeTransitionPage(
              context: context,
              state: state,
              child: ReorderNotePage(currentOrder: currentOrder),
            );
          },
        )
      ],
    ),
    GoRoute(
      path: RouterPath.noteSelectionPage,
      pageBuilder: (context, state) {
        final args = state.extra as NoteSelectionArgs;

        if (args.previousPage == PreviousPage.trash) {
          final bloc = args.bloc as WasteBasketBloc;

          return NoTransitionPage(
            child: BlocProvider<WasteBasketBloc>.value(
              value: bloc,
              child: NoteSelectionPage(
                selectedNotes: args.selectedNotes,
                previousPage: args.previousPage,
              ),
            ),
          );
        }

        if (args.previousPage == PreviousPage.search) {
          final bloc = args.bloc as SearchNotesBloc;

          return NoTransitionPage(
            child: BlocProvider<SearchNotesBloc>.value(
              value: bloc,
              child: NoteSelectionPage(
                selectedNotes: args.selectedNotes,
                previousPage: args.previousPage,
              ),
            ),
          );
        }

        return NoTransitionPage(
          child: NoteSelectionPage(
            selectedNotes: args.selectedNotes,
            previousPage: args.previousPage,
          ),
        );

        // return NoTransitionPage(
        //   child: BlocProvider.value(
        //     value: context.read<WasteBasketBloc>(),
        //     child: NoteSelectionPage(
        //       selectedNotes: args.selectedNotes,
        //       previousPage: args.previousPage,
        //     ),
        //   ),
        // );
      },
    ),
  ],
);

CustomTransitionPage buildFadeTransitionPage({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(
      opacity: CurveTween(curve: Curves.easeInCirc).animate(animation),
      child: child,
    ),
  );
}
