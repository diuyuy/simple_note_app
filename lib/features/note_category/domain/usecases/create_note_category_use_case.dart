import '../entities/note_category.dart';
import '../repositories/note_category_repository.dart';

class CreateNoteCategoryUseCase {
  final NoteCategoryRepository noteCategoryRepository;

  CreateNoteCategoryUseCase({required this.noteCategoryRepository});

  Future<void> execute(NoteCategory newCategory) async {
    await noteCategoryRepository.createNoteCategory(newCategory);
  }
}
