import '../../entities/note.dart';
import '../../repositories/note_repository.dart';

class UpdateNoteUseCase {
  final NoteRepository noteRepository;

  UpdateNoteUseCase({required this.noteRepository});

  Future<void> execute(Note updatedNote) async {
    await noteRepository.updateNote(updatedNote);
  }
}
