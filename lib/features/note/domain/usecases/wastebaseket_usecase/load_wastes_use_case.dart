import '../../entities/note.dart';
import '../../repositories/wastebasket_repository.dart';

class LoadWastesUseCase {
  final WastebasketRepository wastebasketRepository;

  LoadWastesUseCase({required this.wastebasketRepository});

  List<Note> execute() {
    return wastebasketRepository.loadAllWastes();
  }
}
