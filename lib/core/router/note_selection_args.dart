import 'package:flutter_bloc/flutter_bloc.dart';

import '../enum/previous_page.dart';

class NoteSelectionArgs {
  final List<String> selectedNotes;
  final PreviousPage previousPage;
  final BlocBase? bloc;

  NoteSelectionArgs({
    required this.selectedNotes,
    required this.previousPage,
    this.bloc,
  });
}
