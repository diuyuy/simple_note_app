import 'package:get_it/get_it.dart';

import '../../features/note/domain/repositories/note_repository.dart';
import '../../features/note/domain/repositories/wastebasket_repository.dart';
import '../../features/note/domain/usecases/wastebaseket_usecase/delete_permanently_user_case.dart';
import '../../features/note/domain/usecases/wastebaseket_usecase/load_wastes_use_case.dart';
import '../../features/note/domain/usecases/wastebaseket_usecase/restore_note_user_case.dart';
import '../../features/setting/domain/repositories/app_setting_repository.dart';

void registerWasteUseCase() {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton<LoadWastesUseCase>(() {
    final wastebasketRepository = getIt<WastebasketRepository>();
    final appSettingRepository = getIt<AppSettingRepository>();

    return LoadWastesUseCase(
      wastebasketRepository: wastebasketRepository,
      appSettingRepository: appSettingRepository,
    );
  });

  getIt.registerLazySingleton<DeletePermanentlyUserCase>(() {
    final wastebasketRepository = getIt<WastebasketRepository>();

    return DeletePermanentlyUserCase(
        wastebasketRepository: wastebasketRepository);
  });

  getIt.registerLazySingleton<RestoreNoteUserCase>(() {
    final noteRepository = getIt<NoteRepository>();
    final wastebasketRepository = getIt<WastebasketRepository>();

    return RestoreNoteUserCase(
      noteRepository: noteRepository,
      wastebasketRepository: wastebasketRepository,
    );
  });
}
