import '../../repositories/note_repository.dart';
import '../../repositories/wastebasket_repository.dart';

class DeleteNoteUseCase {
  final NoteRepository noteRepository;
  final WastebasketRepository wastebasketRepository;

  DeleteNoteUseCase({
    required this.noteRepository,
    required this.wastebasketRepository,
  });

  Future<void> execute(String id) async {
    final deletedNote = noteRepository.getNote(id);

    await noteRepository.deleteNote(id);
    await wastebasketRepository.addDeletedNote(deletedNote);
  }
}
