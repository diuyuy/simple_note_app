import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note_app/features/note/presentation/pages/favorite/favorites_page.dart';
import 'package:simple_note_app/features/note/presentation/pages/read_note_page.dart';
import 'package:simple_note_app/features/note/presentation/pages/search/search_note_page.dart';
import 'package:simple_note_app/features/note/presentation/pages/update_note_page.dart';

import '../../features/note/presentation/pages/create_note_page.dart';
import '../../features/note/presentation/pages/note_page.dart';

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
          path: 'create',
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: CreateNotePage(),
          ),
        ),
        GoRoute(
          path: 'favorites',
          pageBuilder: (context, state) {
            return buildFadeTransitionPage(
              context: context,
              state: state,
              child: FavoritesPage(),
            );
          },
        ),
        GoRoute(
          path: 'read',
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
              path: 'update',
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
          path: 'search',
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: const SearchNotePage(),
          ),
        )
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
