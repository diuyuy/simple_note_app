import '../../features/note/data/models/note_model.dart';
import '../../features/note/domain/entities/note.dart';

NoteModel noteToModel(Note note) {
  return NoteModel(
    id: note.id,
    title: note.title,
    content: note.content,
    createDate: note.createDate,
    updateDate: note.updateDate,
    deletedDate: note.deletedDate,
    isFavorite: note.isFavorite,
    category: note.category,
  );
}
