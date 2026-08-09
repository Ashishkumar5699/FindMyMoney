import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../domain/models/category.dart';

class CategoryState {
  final List<Category> categories;
  final bool isLoading;
  final String? error;

  const CategoryState({
    this.categories = const [],
    this.isLoading = false,
    this.error,
  });

  CategoryState copyWith({
    List<Category>? categories,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      CategoryState(
        categories: categories ?? this.categories,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : error ?? this.error,
      );
}

class CategoryNotifier extends StateNotifier<CategoryState> {
  final Ref _ref;
  String? _userId;

  CategoryNotifier(this._ref) : super(const CategoryState());

  Future<void> load(String userId) async {
    _userId = userId;
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final categories =
          await _ref.read(categoryRepositoryProvider).getCategories(userId);
      state = state.copyWith(categories: categories, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> create({
    required String name,
    required String type,
    String? parentId,
  }) async {
    if (_userId == null) return false;
    try {
      final category =
          await _ref.read(categoryRepositoryProvider).createCategory(
                _userId!,
                name: name,
                type: type,
                parentId: parentId,
              );
      // If it's a sub-category, inject it into the parent's subCategories list
      if (parentId != null) {
        state = state.copyWith(
          categories: [
            for (final c in state.categories)
              if (c.id == parentId)
                c.copyWith(subCategories: [...c.subCategories, category])
              else
                c,
          ],
        );
      } else {
        state = state.copyWith(categories: [category, ...state.categories]);
      }
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> delete(String id) async {
    if (_userId == null) return false;
    try {
      await _ref.read(categoryRepositoryProvider).deleteCategory(_userId!, id);
      // Remove from top-level or from subCategories
      state = state.copyWith(
        categories: state.categories
            .where((c) => c.id != id)
            .map((c) => c.copyWith(
                  subCategories:
                      c.subCategories.where((s) => s.id != id).toList(),
                ))
            .toList(),
      );
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final categoryProvider =
    StateNotifierProvider<CategoryNotifier, CategoryState>(
  (ref) => CategoryNotifier(ref),
);
