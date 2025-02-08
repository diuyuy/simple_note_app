import 'package:get_it/get_it.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_note_app/features/note/data/models/note_order.dart';

import '../../features/note/data/datasources/note_local_datasource.dart';
import '../../features/note/data/models/note_model.dart';
import '../../features/note/data/repositories/note_repository_impl.dart';
import '../../features/note/domain/repositories/note_repository.dart';
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

  final noteModel = await Hive.openBox<NoteModel>(BoxName.noteBoxName);
  final noteOrder = await Hive.openBox<NoteOrder>(BoxName.noteOrderBoxName);
  final appSettingModel =
      await Hive.openBox<AppSettingModel>(BoxName.appSettingBoxName);

  final GetIt getIt = GetIt.instance;

  getIt.registerLazySingleton<NoteRepository>(
    () {
      final noteLocalDatasource = NoteLocalDatasource(noteModel, noteOrder);

      return NoteRepositoryImpl(noteLocalDatasource);
    },
  );

  getIt.registerLazySingleton<AppSettingRepository>(
    () {
      final appSettingLocalDatasource =
          AppSettingLocalDatasource(appSettingModel);

      return AppSettingRepositoryImpl(appSettingLocalDatasource);
    },
  );
}
