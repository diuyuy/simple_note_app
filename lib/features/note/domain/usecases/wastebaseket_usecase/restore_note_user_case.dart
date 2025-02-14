import '../../repositories/note_repository.dart';
import '../../repositories/wastebasket_repository.dart';

class RestoreNoteUserCase {
  RestoreNoteUserCase({
    required this.noteRepository,
    required this.wastebasketRepository,
  });

  final NoteRepository noteRepository;
  final WastebasketRepository wastebasketRepository;

  Future<void> execute() async {}
}
