import 'dart:convert';
import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import '../../../core/api/api_client.dart';
import '../../../core/api/api_endpoints.dart';
import '../models/profile_models.dart';

class ProfileService {
  final _api = ApiClient();

  Future<DrinkProfileModel> getMyProfile() async {
    final data = await _api.get(ApiEndpoints.myProfile);
    return DrinkProfileModel.fromJson(data);
  }

  Future<DrinkProfileModel> getProfileById(String accountId) async {
    final data = await _api.get(ApiEndpoints.profile(accountId));
    return DrinkProfileModel.fromJson(data);
  }

  Future<DrinkProfileModel> updateProfile({
    required String phone,
    required String favoriteDrinks,
    required String drinkingLevel,
    required String frequency,
    required String preferredVibe,
    required String bio,
    String avatarUrl = '',
  }) async {
    final data = await _api.put(ApiEndpoints.myProfile, {
      'phone':          phone,
      'favoriteDrinks': favoriteDrinks,
      'drinkingLevel':  drinkingLevel,
      'frequency':      frequency,
      'preferredVibe':  preferredVibe,
      'bio':            bio,
      'avatarUrl':      avatarUrl,
    });
    return DrinkProfileModel.fromJson(data);
  }

  Future<DrinkProfileModel> uploadPhoto(File imageFile) async {
    final compressed = await FlutterImageCompress.compressWithFile(
      imageFile.absolute.path,
      minWidth: 400,
      minHeight: 400,
      quality: 70,
      format: CompressFormat.jpeg,
    );
    if (compressed == null) throw Exception('Failed to compress image');
    final base64Str = base64Encode(compressed);
    final data = await _api.post(ApiEndpoints.profilePhoto, {'base64Image': base64Str});
    return DrinkProfileModel.fromJson(data);
  }
}
