import '../entities/note_category.dart';
import '../repositories/note_category_repository.dart';

class UpdateNoteCategoryUseCase {
  final NoteCategoryRepository noteCategoryRepository;

  UpdateNoteCategoryUseCase({required this.noteCategoryRepository});

  Future<void> execute(NoteCategory updatedCategory) async {
    await noteCategoryRepository.updateNoteCategory(updatedCategory);
  }
}
