import 'package:get_it/get_it.dart';

import '../../features/note_category/domain/repositories/note_category_repository.dart';
import '../../features/note_category/domain/usecases/create_note_category_use_case.dart';
import '../../features/note_category/domain/usecases/delete_note_category_use_case.dart';
import '../../features/note_category/domain/usecases/get_all_note_categories_use_case.dart';
import '../../features/note_category/domain/usecases/reorder_note_category_use_case.dart';
import '../../features/note_category/domain/usecases/update_note_category_use_case.dart';

void registerNoteCategoryUseCase() {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton<GetAllNoteCategoriesUseCase>(
    () {
      final noteCategoryRepository = getIt<NoteCategoryRepository>();

      return GetAllNoteCategoriesUseCase(
          noteCategoryRepository: noteCategoryRepository);
    },
  );

  getIt.registerLazySingleton<CreateNoteCategoryUseCase>(
    () {
      final noteCategoryRepository = getIt<NoteCategoryRepository>();

      return CreateNoteCategoryUseCase(
          noteCategoryRepository: noteCategoryRepository);
    },
  );

  getIt.registerLazySingleton<UpdateNoteCategoryUseCase>(
    () {
      final noteCategoryRepository = getIt<NoteCategoryRepository>();

      return UpdateNoteCategoryUseCase(
          noteCategoryRepository: noteCategoryRepository);
    },
  );

  getIt.registerLazySingleton<DeleteNoteCategoryUseCase>(
    () {
      final noteCategoryRepository = getIt<NoteCategoryRepository>();

      return DeleteNoteCategoryUseCase(
          noteCategoryRepository: noteCategoryRepository);
    },
  );

  getIt.registerLazySingleton<ReorderNoteCategoryUseCase>(
    () {
      final noteCategoryRepository = getIt<NoteCategoryRepository>();

      return ReorderNoteCategoryUseCase(
          noteCategoryRepository: noteCategoryRepository);
    },
  );
}
