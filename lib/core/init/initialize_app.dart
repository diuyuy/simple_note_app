import 'package:get_it/get_it.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/note/data/datasources/note_local_datasource.dart';
import '../../features/note/data/datasources/wastebasket_local_datasource.dart';
import '../../features/note/data/models/note_model.dart';
import '../../features/note/data/models/note_order.dart';
import '../../features/note/data/repositories/note_repository_impl.dart';
import '../../features/note/data/repositories/wastebasket_repository_impl.dart';
import '../../features/note/domain/repositories/note_repository.dart';
import '../../features/note/domain/repositories/wastebasket_repository.dart';
import '../../features/note/domain/usecases/note_usecase/create_note_use_case.dart';
import '../../features/note/domain/usecases/note_usecase/delete_note_use_case.dart';
import '../../features/note/domain/usecases/note_usecase/load_notes_use_case.dart';
import '../../features/note/domain/usecases/note_usecase/reorder_notes_use_case.dart';
import '../../features/note/domain/usecases/note_usecase/update_note_use_case.dart';
import '../../features/note/domain/usecases/wastebaseket_usecase/delete_permanently_user_case.dart';
import '../../features/note/domain/usecases/wastebaseket_usecase/load_wastes_use_case.dart';
import '../../features/note/domain/usecases/wastebaseket_usecase/restore_note_user_case.dart';
import '../../features/setting/data/datasources/app_setting_local_datasource.dart';
import '../../features/setting/data/models/app_setting_model.dart';
import '../../features/setting/data/repositories/app_setting_repository_impl.dart';
import '../../features/setting/domain/repositories/app_setting_repository.dart';
import '../constants/box_name.dart';
import 'hive/hive_registrar.g.dart';

Future<void> initializeApp() async {
  final directory = await getApplicationDocumentsDirectory();

  Hive
    ..init(directory.path)
    ..registerAdapters();

  final noteBox = await Hive.openBox<NoteModel>(BoxName.noteBoxName);
  final wasteBasketBox =
      await Hive.openBox<NoteModel>(BoxName.wasteBasketBoxName);
  final noteOrder = await Hive.openBox<NoteOrder>(BoxName.noteOrderBoxName);

  final appSettingBox =
      await Hive.openBox<AppSettingModel>(BoxName.appSettingBoxName);

  final GetIt getIt = GetIt.instance;

  getIt.registerLazySingleton<NoteRepository>(
    () {
      final noteLocalDatasource = NoteLocalDatasource(noteBox, noteOrder);

      return NoteRepositoryImpl(noteLocalDatasource);
    },
  );

  getIt.registerLazySingleton<WastebasketRepository>(
    () {
      final wasteLocalDatasource = WastebasketLocalDatasource(wasteBasketBox);

      return WastebasketRepositoryImpl(wasteLocalDatasource);
    },
  );

  getIt.registerLazySingleton<CreateNoteUseCase>(
    () {
      final noteRepository = getIt<NoteRepository>();

      return CreateNoteUseCase(noteRepository: noteRepository);
    },
  );

  getIt.registerLazySingleton<LoadNotesUseCase>(
    () {
      final noteRepository = getIt<NoteRepository>();

      return LoadNotesUseCase(noteRepository: noteRepository);
    },
  );

  getIt.registerLazySingleton<UpdateNoteUseCase>(
    () {
      final noteRepository = getIt<NoteRepository>();

      return UpdateNoteUseCase(noteRepository: noteRepository);
    },
  );

  getIt.registerLazySingleton<DeleteNoteUseCase>(
    () {
      final noteRepository = getIt<NoteRepository>();
      final wasteBasketRepository = getIt<WastebasketRepository>();

      return DeleteNoteUseCase(
        noteRepository: noteRepository,
        wastebasketRepository: wasteBasketRepository,
      );
    },
  );

  getIt.registerLazySingleton<ReorderNotesUseCase>(
    () {
      final noteRepository = getIt<NoteRepository>();

      return ReorderNotesUseCase(noteRepository: noteRepository);
    },
  );

  getIt.registerLazySingleton<LoadWastesUseCase>(() {
    final wastebasketRepository = getIt<WastebasketRepository>();

    return LoadWastesUseCase(wastebasketRepository: wastebasketRepository);
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

  getIt.registerLazySingleton<AppSettingRepository>(
    () {
      final appSettingLocalDatasource =
          AppSettingLocalDatasource(appSettingBox);

      return AppSettingRepositoryImpl(appSettingLocalDatasource);
    },
  );
}
