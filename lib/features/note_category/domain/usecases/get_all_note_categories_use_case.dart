import '../entities/note_category.dart';
import '../repositories/note_category_repository.dart';

class GetAllNoteCategoriesUseCase {
  final NoteCategoryRepository noteCategoryRepository;

  GetAllNoteCategoriesUseCase({required this.noteCategoryRepository});

  List<NoteCategory> execute() {
    return noteCategoryRepository.getAllNoteCategories();
  }
}
