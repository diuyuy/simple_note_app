import '../../entities/note.dart';
import '../../repositories/note_repository.dart';

class CreateNoteUseCase {
  final NoteRepository noteRepository;

  CreateNoteUseCase({required this.noteRepository});

  Future<void> execute(Note newNote) async {
    await noteRepository.createNote(newNote);
  }
}
