import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/note/presentation/bloc/search_notes_bloc/search_notes_bloc.dart';
import '../../features/note/presentation/bloc/wastebasket_bloc/waste_basket_bloc.dart';
import '../../features/note/presentation/pages/favorite/favorite_selection_page.dart';
import '../../features/note/presentation/pages/note_page_export.dart';
import '../../features/note/presentation/pages/search/search_note_selection_page.dart';
import '../../features/note/presentation/pages/wastebasket/wastebasket_selection_page.dart';
import '../../features/note_category/presentation/pages/category_notes/category_notes_selection_page.dart';
import '../../features/note_category/presentation/pages/note_category_export.dart';
import '../../features/setting/presentation/bloc/app_setting_bloc.dart';
import '../../features/setting/presentation/pages/app_license_page.dart';
import '../../features/setting/presentation/pages/app_setting_page.dart';
import '../../features/setting/presentation/pages/app_theme/app_seed_color_setting_page.dart';
import '../../features/setting/presentation/pages/app_theme/theme_mode_setting_page.dart';
import '../../features/setting/presentation/pages/note_setting/delete_interval_setting_page.dart';
import '../../features/setting/presentation/pages/note_setting/note_text_setting_page.dart';
import '../enum/router_params_key.dart';
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
        BlocProvider.of<AppSettingBloc>(context).state.appSetting.isExitOnHome;
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
      path: RouterPath.noteSelectionPage,
      pageBuilder: (context, state) {
        final args = state.extra as SelectionPageArgs;

        return NoTransitionPage(
          child: NoteSelectionPage(
            selectedNotes: args.selectedNotes,
          ),
        );
      },
    ),
    GoRoute(
      path: RouterPath.searchNoteSelectionPage,
      pageBuilder: (context, state) {
        final args = state.extra as SelectionPageArgs;

        return NoTransitionPage(
          child: BlocProvider.value(
            value: args.bloc as SearchNotesBloc,
            child: SearchNoteSelectionPage(
              selectedNotes: args.selectedNotes,
            ),
          ),
        );
      },
    ),
    GoRoute(
      path: RouterPath.favoritesSelectionPage,
      pageBuilder: (context, state) {
        final args = state.extra as SelectionPageArgs;

        return NoTransitionPage(
          child: FavoriteSelectionPage(
            selectedFavorites: args.selectedNotes,
          ),
        );
      },
    ),
    GoRoute(
      path: RouterPath.wastebasketSelectionPage,
      pageBuilder: (context, state) {
        final args = state.extra as SelectionPageArgs;

        return NoTransitionPage(
          child: BlocProvider.value(
            value: args.bloc as WasteBasketBloc,
            child: WastebasketSelectionPage(
              selectedWastes: args.selectedNotes,
            ),
          ),
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
                categoryId: id,
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
            ),
            GoRoute(
              path: RouterPath.categoryNotesSelectionPage,
              pageBuilder: (context, state) {
                final args = state.extra as Map<RouterParamsKey, List<String>>;

                return NoTransitionPage(
                  child: CategoryNotesSelectionPage(
                    categoryId: args[RouterParamsKey.categoryId]!.first,
                    selectedNotes: args[RouterParamsKey.selectedNotes] ?? [],
                  ),
                );
              },
            ),
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
    GoRoute(
      path: RouterPath.appSettingPage,
      pageBuilder: (context, state) => buildFadeTransitionPage(
        context: context,
        state: state,
        child: const AppSettingPage(),
      ),
      routes: [
        GoRoute(
          path: RouterPath.themeModeSettingPage,
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: const ThemeModeSettingPage(),
          ),
        ),
        GoRoute(
          path: RouterPath.seedColorSettingPage,
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: const AppSeedColorSettingPage(),
          ),
        ),
        GoRoute(
          path: RouterPath.deleteIntervalSettingPage,
          pageBuilder: (context, state) => buildFadeTransitionPage(
            context: context,
            state: state,
            child: const DeleteIntervalSettingPage(),
          ),
        ),
      ],
    ),
    GoRoute(
      path: RouterPath.noteTextSettingPage,
      pageBuilder: (context, state) => buildFadeTransitionPage(
        context: context,
        state: state,
        child: const NoteTextSettingPage(),
      ),
    ),
    GoRoute(
      path: RouterPath.appLicensePage,
      pageBuilder: (context, state) => buildFadeTransitionPage(
        context: context,
        state: state,
        child: const AppLicensePage(),
      ),
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
