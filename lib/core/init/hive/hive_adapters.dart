import 'package:hive_ce/hive.dart';

import '../../../features/note/data/models/note_model.dart';
import '../../../features/note/data/models/note_order.dart';
import '../../../features/note_category/data/models/note_category_model.dart';
import '../../../features/setting/data/models/app_setting_model.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<NoteModel>(),
  AdapterSpec<NoteOrder>(),
  AdapterSpec<AppSettingModel>(),
  AdapterSpec<NoteCategoryModel>(),
])
// This is for code generation
// ignore: unused_element
void _() {}
