import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/category.dart';
import '../../domain/repositories/category_repository.dart';
import '../api/api_client.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final Dio _dio;

  CategoryRepositoryImpl(this._dio);

  @override
  Future<List<Category>> getCategories(String userId) async {
    final response = await _dio.get(ApiConstants.categories);
    final list = unwrap(response) as List<dynamic>;
    return list
        .map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Category> createCategory(
    String userId, {
    required String name,
    required String type,
    String? parentId,
  }) async {
    final response = await _dio.post(
      ApiConstants.categories,
      data: {
        'name': name,
        'type': type,
        'parentId': parentId,
      },
    );
    return Category.fromJson(unwrap(response) as Map<String, dynamic>);
  }

  @override
  Future<void> deleteCategory(String userId, String id) async {
    await _dio.delete(ApiConstants.category(id));
  }
}
