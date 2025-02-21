import '../repositories/note_category_repository.dart';

class ReorderNoteCategoryUseCase {
  final NoteCategoryRepository noteCategoryRepository;

  ReorderNoteCategoryUseCase({required this.noteCategoryRepository});

  Future<void> execute(List<String> newOrders) async {
    await noteCategoryRepository.reorderNoteCategory(newOrders);
  }
}
