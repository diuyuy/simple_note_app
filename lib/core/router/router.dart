import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/note/presentation/bloc/search_notes_bloc/search_notes_bloc.dart';
import '../../features/note/presentation/bloc/wastebasket_bloc/waste_basket_bloc.dart';
import '../../features/note/presentation/pages/note_page_export.dart';
import '../../features/note_category/presentation/pages/note_category_export.dart';
import '../../features/setting/presentation/cubit/app_setting_cubit.dart';
import '../enum/previous_page.dart';
import 'note_selection_args.dart';
import 'router_path.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
bool _isFirstRun = true;

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: navigatorKey,
  redirect: (context, state) {
    if (!_isFirstRun) {
      return null;
    }
    final isExitOnHome =
        BlocProvider.of<AppSettingCubit>(context).state.isExitOnHome;
    if (!isExitOnHome) {
      _isFirstRun = false;
      return RouterPath.noteCategoryPage;
    }
    _isFirstRun = false;

    return null;
  },
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
          path: RouterPath.reorderNotePage,
          pageBuilder: (context, state) {
            final currentOrder = state.extra as List<String>;

            return buildFadeTransitionPage(
              context: context,
              state: state,
              child: ReorderNotePage(currentOrder: currentOrder),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: RouterPath.favoritesPage,
      pageBuilder: (context, state) {
        return buildFadeTransitionPage(
          context: context,
          state: state,
          child: const FavoritesPage(),
        );
      },
    ),
    GoRoute(
      path: RouterPath.wastebasketPage,
      pageBuilder: (context, state) => buildFadeTransitionPage(
        context: context,
        state: state,
        child: const WastebasketPage(),
      ),
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
      },
    ),
    GoRoute(
      path: RouterPath.noteCategoryPage,
      pageBuilder: (context, state) {
        return buildFadeTransitionPage(
          context: context,
          state: state,
          child: const NoteCategoryPage(),
        );
      },
      routes: [
        GoRoute(
          path: RouterPath.categoryNotesPage,
          pageBuilder: (context, state) {
            final paramsMap = state.extra as Map<String, String>;

            final id = paramsMap['id']!;
            final categoryName = paramsMap['categoryName']!;

            return buildFadeTransitionPage(
              context: context,
              state: state,
              child: CategoryNotesPage(
                id: id,
                categoryName: categoryName,
              ),
            );
          },
          routes: [
            GoRoute(
              path: RouterPath.addNoteTocategoryPage,
              pageBuilder: (context, state) {
                final paramsMap = state.extra as Map<String, String>;
                final id = paramsMap['id']!;

                return buildFadeTransitionPage(
                  context: context,
                  state: state,
                  child: AddNoteToCategoryPage(id: id),
                );
              },
            )
          ],
        ),
        GoRoute(
          path: RouterPath.createNoteCategoryPage,
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: const CreateNoteCategoryPage(),
          ),
        ),
        GoRoute(
          path: RouterPath.updateNoteCategoryPage,
          pageBuilder: (context, state) {
            final id = state.extra as String;

            return buildFadeTransitionPage(
              context: context,
              state: state,
              child: UpdateNoteCategoryPage(id: id),
            );
          },
        ),
        GoRoute(
          path: RouterPath.noteCategorySelectionPage,
          pageBuilder: (context, state) {
            final List<String> selectedCategories = state.extra as List<String>;

            return NoTransitionPage(
              child: CategorySelectionPage(
                selectedCategories: selectedCategories,
              ),
            );
          },
        ),
        GoRoute(
          path: RouterPath.reorderNoteCategoryPage,
          pageBuilder: (context, state) {
            final currentOrders = state.extra as List<String>;

            return buildFadeTransitionPage(
              context: context,
              state: state,
              child: ReorderCategoryPage(currentOrders: currentOrders),
            );
          },
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
