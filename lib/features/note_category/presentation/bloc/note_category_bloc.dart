import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/note_category.dart';
import '../../domain/usecases/create_note_category_use_case.dart';
import '../../domain/usecases/delete_note_category_use_case.dart';
import '../../domain/usecases/get_all_note_categories_use_case.dart';
import '../../domain/usecases/reorder_note_category_use_case.dart';
import '../../domain/usecases/update_note_category_use_case.dart';

part 'note_category_bloc.freezed.dart';
part 'note_category_event.dart';
part 'note_category_state.dart';

class NoteCategoryBloc extends Bloc<NoteCategoryEvent, NoteCategoryState> {
  NoteCategoryBloc({
    required this.getAllNoteCategoriesUseCase,
    required this.createNoteCategoryUseCase,
    required this.updateNoteCategoryUseCase,
    required this.deleteNoteCategoryUseCase,
    required this.reorderNoteCategoryUseCase,
  }) : super(_Initial(categories: [])) {
    on<_CategoryLoaded>(_onCategoryLoaded);
    on<_CategoryCreated>(_onCategoryCreated);
    on<_CategoryUpdated>(_onCategoryUpdated);
    on<_CategoryDeleted>(_onCategoryDeleted);
    on<_CategoryReordered>(_onCategoryReordered);
  }

  final GetAllNoteCategoriesUseCase getAllNoteCategoriesUseCase;
  final CreateNoteCategoryUseCase createNoteCategoryUseCase;
  final UpdateNoteCategoryUseCase updateNoteCategoryUseCase;
  final DeleteNoteCategoryUseCase deleteNoteCategoryUseCase;
  final ReorderNoteCategoryUseCase reorderNoteCategoryUseCase;
  final Uuid _uuid = Uuid();

  void _onCategoryLoaded(
      _CategoryLoaded event, Emitter<NoteCategoryState> emit) {
    try {
      final categories = getAllNoteCategoriesUseCase.execute();

      emit(_NoteCategoryLoadSuccess(categories: categories));
    } catch (e) {
      emit(
        _NoteCategoryLoadFailure(
          categories: state.categories,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _onCategoryCreated(
      _CategoryCreated event, Emitter<NoteCategoryState> emit) async {
    try {
      final id = _uuid.v4();
      final newCategory = NoteCategory(
        id: id,
        categoryName: event.categoryName,
        iconCode: event.iconCode,
        categoryColorA: event.categoryColorA,
        categoryColorR: event.categoryColorR,
        categoryColorG: event.categoryColorG,
        categoryColorB: event.categoryColorB,
      );

      await createNoteCategoryUseCase.execute(newCategory);

      emit(_NoteCategoryLoadSuccess(
          categories: getAllNoteCategoriesUseCase.execute()));
    } catch (e) {
      emit(
        _NoteCategoryLoadFailure(
          categories: state.categories,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _onCategoryUpdated(
      _CategoryUpdated event, Emitter<NoteCategoryState> emit) async {
    try {
      final currentCategory =
          state.categories.firstWhere((category) => category.id == event.id);

      final updatedNoteCategory = currentCategory.copyWith(
        categoryName: event.categoryName ?? currentCategory.categoryName,
        iconCode: event.iconCode ?? currentCategory.iconCode,
        categoryColorA: event.categoryColorA ?? currentCategory.categoryColorA,
        categoryColorR: event.categoryColorR ?? currentCategory.categoryColorR,
        categoryColorG: event.categoryColorG ?? currentCategory.categoryColorG,
        categoryColorB: event.categoryColorB ?? currentCategory.categoryColorB,
      );

      await updateNoteCategoryUseCase.execute(updatedNoteCategory);

      emit(_NoteCategoryLoadSuccess(
          categories: getAllNoteCategoriesUseCase.execute()));
    } catch (e) {
      emit(
        _NoteCategoryLoadFailure(
          categories: state.categories,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _onCategoryDeleted(
      _CategoryDeleted event, Emitter<NoteCategoryState> emit) async {
    try {
      await deleteNoteCategoryUseCase.execute(event.deletedNoteCategoryId);

      emit(_NoteCategoryLoadSuccess(
          categories: getAllNoteCategoriesUseCase.execute()));
    } catch (e) {
      emit(
        _NoteCategoryLoadFailure(
          categories: state.categories,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _onCategoryReordered(
      _CategoryReordered event, Emitter<NoteCategoryState> emit) async {
    try {
      await reorderNoteCategoryUseCase.execute(event.newOrders);

      emit(_NoteCategoryLoadSuccess(
          categories: getAllNoteCategoriesUseCase.execute()));
    } catch (e) {
      emit(
        _NoteCategoryLoadFailure(
          categories: state.categories,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
