import '../../entities/note.dart';
import '../../repositories/note_repository.dart';
import '../../repositories/wastebasket_repository.dart';

class RestoreNoteUserCase {
  RestoreNoteUserCase({
    required this.noteRepository,
    required this.wastebasketRepository,
  });

  final NoteRepository noteRepository;
  final WastebasketRepository wastebasketRepository;

  Future<void> execute(Note restoredNote) async {
    await noteRepository.restoreNote(restoredNote);
    await wastebasketRepository.restoreNote(restoredNote.id);
  }
}
