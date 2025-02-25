import '../../repositories/note_repository.dart';
import '../../repositories/wastebasket_repository.dart';

class RestoreNoteUserCase {
  RestoreNoteUserCase({
    required this.noteRepository,
    required this.wastebasketRepository,
  });

  final NoteRepository noteRepository;
  final WastebasketRepository wastebasketRepository;

  Future<void> execute(String restoredId) async {
    final restored = wastebasketRepository.getWaste(restoredId);
    final restoredNote = restored.copyWith(deleteDate: null);

    await noteRepository.restoreNote(restoredNote);
    await wastebasketRepository.deleteRestoredNote(restoredId);
  }
}
