import '../../../../setting/domain/repositories/app_setting_repository.dart';
import '../../entities/note.dart';
import '../../repositories/wastebasket_repository.dart';

class LoadWastesUseCase {
  final WastebasketRepository wastebasketRepository;
  final AppSettingRepository appSettingRepository;

  LoadWastesUseCase({
    required this.wastebasketRepository,
    required this.appSettingRepository,
  });

  Future<List<Note>> execute() async {
    final wasteList = wastebasketRepository.loadAllWastes();
    final autoDeleteInterval =
        appSettingRepository.getAppSetting().autoDeleteDays;
    final autoDeleteActiveAt =
        appSettingRepository.getAppSetting().autoDeleteActiveAt;

    if (autoDeleteActiveAt == null) {
      return wasteList;
    }

    List<Note> wastes = [];
    final currentDate = DateTime.now();

    for (var waste in wasteList) {
      if (waste.deletedDate!.isAfter(autoDeleteActiveAt)) {
        waste = waste.copyWith(deletedDate: autoDeleteActiveAt);
        wastebasketRepository.updateWaste(waste);
      }

      if (currentDate.isAfter(
          waste.deletedDate!.add(Duration(days: autoDeleteInterval)))) {
        await wastebasketRepository.deleteNotePermanently(waste.id);
      } else {
        wastes.add(waste);
      }
    }

    return wastes;
  }
}
