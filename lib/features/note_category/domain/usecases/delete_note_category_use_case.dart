import '../repositories/note_category_repository.dart';

class DeleteNoteCategoryUseCase {
  final NoteCategoryRepository noteCategoryRepository;

  DeleteNoteCategoryUseCase({required this.noteCategoryRepository});

  Future<void> execute(String deletedCategoryId) async {
    await noteCategoryRepository.deleteNoteCategory(deletedCategoryId);
  }
}
