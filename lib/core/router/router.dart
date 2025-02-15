import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/note/presentation/pages/favorite/favorites_page.dart';
import '../../features/note/presentation/pages/note/create_note_page.dart';
import '../../features/note/presentation/pages/note/read_note_page.dart';
import '../../features/note/presentation/pages/note/update_note_page.dart';
import '../../features/note/presentation/pages/note_page.dart';
import '../../features/note/presentation/pages/search/search_note_page.dart';
import '../../features/note/presentation/pages/wastebasket/wastebasket_page.dart';
import '../constants/router_path.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => buildFadeTransitionPage(
        context: context,
        state: state,
        child: const NotePage(),
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
      ],
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
