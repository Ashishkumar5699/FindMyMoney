import '../models/category.dart';

abstract class CategoryRepository {
  Future<List<Category>> getCategories(String userId);
  Future<Category> createCategory(
    String userId, {
    required String name,
    required String type,
    String? parentId,
  });
  Future<void> deleteCategory(String userId, String id);
}
