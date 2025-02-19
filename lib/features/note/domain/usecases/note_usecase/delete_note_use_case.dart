import '../../entities/note.dart';
import '../../repositories/note_repository.dart';
import '../../repositories/wastebasket_repository.dart';

class DeleteNoteUseCase {
  final NoteRepository noteRepository;
  final WastebasketRepository wastebasketRepository;

  DeleteNoteUseCase({
    required this.noteRepository,
    required this.wastebasketRepository,
  });

  Future<void> execute(Note deletedNote) async {
    await noteRepository.deleteNote(deletedNote.id);
    await wastebasketRepository.addDeletedNote(deletedNote);
  }
}
