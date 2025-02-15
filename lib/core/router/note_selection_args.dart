import '../enum/previous_page.dart';

class NoteSelectionArgs {
  final List<String> selectedNotes;
  final PreviousPage previousPage;

  NoteSelectionArgs({
    required this.selectedNotes,
    required this.previousPage,
  });
}
