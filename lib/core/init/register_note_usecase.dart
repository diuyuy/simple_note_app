import 'package:get_it/get_it.dart';

import '../../features/note/domain/repositories/note_repository.dart';
import '../../features/note/domain/repositories/wastebasket_repository.dart';
import '../../features/note/domain/usecases/note_usecase/create_note_use_case.dart';
import '../../features/note/domain/usecases/note_usecase/delete_note_use_case.dart';
import '../../features/note/domain/usecases/note_usecase/load_notes_use_case.dart';
import '../../features/note/domain/usecases/note_usecase/reorder_notes_use_case.dart';
import '../../features/note/domain/usecases/note_usecase/update_note_use_case.dart';

void registerNoteUseCase() {
  final getIt = GetIt.instance;

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
}
