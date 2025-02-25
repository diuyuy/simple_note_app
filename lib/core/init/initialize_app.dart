import 'package:flutter_dotenv/flutter_dotenv.dart';
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
import '../../features/note_category/data/datasources/note_category_local_datasource.dart';
import '../../features/note_category/data/models/note_category_model.dart';
import '../../features/note_category/data/repositories/note_category_repository_impl.dart';
import '../../features/note_category/domain/repositories/note_category_repository.dart';
import '../../features/setting/data/datasources/app_setting_local_datasource.dart';
import '../../features/setting/data/models/app_setting_model.dart';
import '../../features/setting/data/repositories/app_setting_repository_impl.dart';
import '../../features/setting/domain/repositories/app_setting_repository.dart';
import '../constants/box_name.dart';
import 'hive/hive_registrar.g.dart';
import 'register_note_category_usecase.dart';
import 'register_note_usecase.dart';
import 'register_waste_usecase.dart';

Future<void> initializeApp() async {
  final directory = await getApplicationDocumentsDirectory();

  // Open HiveBox
  Hive
    ..init(directory.path)
    ..registerAdapters();

  final noteBox = await Hive.openBox<NoteModel>(BoxName.noteBoxName);
  final wasteBasketBox =
      await Hive.openBox<NoteModel>(BoxName.wasteBasketBoxName);
  final noteOrder = await Hive.openBox<NoteOrder>(BoxName.noteOrderBoxName);

  final appSettingBox =
      await Hive.openBox<AppSettingModel>(BoxName.appSettingBoxName);

  final noteCategoryBox =
      await Hive.openBox<NoteCategoryModel>(BoxName.noteCategoryBoxName);
  final noteCategoryOrderBox =
      await Hive.openBox<List<String>>(BoxName.noteCategoryOrderBoxName);

  // Load .env File
  await dotenv.load(fileName: ".env");

  // Register repositories
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

  getIt.registerLazySingleton<AppSettingRepository>(
    () {
      final appSettingLocalDatasource =
          AppSettingLocalDatasource(appSettingBox);

      return AppSettingRepositoryImpl(appSettingLocalDatasource);
    },
  );

  getIt.registerLazySingleton<NoteCategoryRepository>(
    () {
      final noteCategoryLocalDatasource =
          NoteCategoryLocalDatasource(noteCategoryBox, noteCategoryOrderBox);

      return NoteCategoryRepositoryImpl(noteCategoryLocalDatasource);
    },
  );

  // Register usecase
  registerNoteUseCase();
  registerWasteUseCase();
  registerNoteCategoryUseCase();
}
