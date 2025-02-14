import '../../repositories/note_repository.dart';

class ReorderNotesUseCase {
  final NoteRepository noteRepository;

  ReorderNotesUseCase({required this.noteRepository});

  Future<void> execute(int oldIndex, int newIndex) async {
    await noteRepository.reorderNotes(oldIndex, newIndex);
  }
}
