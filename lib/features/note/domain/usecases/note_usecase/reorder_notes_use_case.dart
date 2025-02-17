import '../../repositories/note_repository.dart';

class ReorderNotesUseCase {
  final NoteRepository noteRepository;

  ReorderNotesUseCase({required this.noteRepository});

  Future<void> execute(List<String> newOrder) async {
    await noteRepository.reorderNotes(newOrder);
  }
}
