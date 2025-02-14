import '../../repositories/wastebasket_repository.dart';

class DeletePermanentlyUserCase {
  DeletePermanentlyUserCase({required this.wastebasketRepository});

  final WastebasketRepository wastebasketRepository;

  Future<void> execute() async {}
}
