import '../entities/note_category.dart';
import '../repositories/note_category_repository.dart';

class DeleteNoteCategoryUseCase {
  final NoteCategoryRepository noteCategoryRepository;

  DeleteNoteCategoryUseCase({required this.noteCategoryRepository});

  Future<void> execute(NoteCategory deletedCategory) async {
    await noteCategoryRepository.deleteNoteCategory(deletedCategory);
  }
}
