import '../../entities/note.dart';
import '../../repositories/note_repository.dart';

class LoadNotesUseCase {
  final NoteRepository noteRepository;
  LoadNotesUseCase({required this.noteRepository});

  List<Note> execute() {
    return noteRepository.loadNoteList();
  }
}
