import '../repositories/note_category_repository.dart';

class ReorderNoteCategoryUseCase {
  final NoteCategoryRepository noteCategoryRepository;

  ReorderNoteCategoryUseCase({required this.noteCategoryRepository});

  Future<void> execute(int oldIndex, int newIndex) async {
    await noteCategoryRepository.reorderNoteCategory(oldIndex, newIndex);
  }
}
