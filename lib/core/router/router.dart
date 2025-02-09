import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
