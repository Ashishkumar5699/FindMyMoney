import 'dart:io';
import 'package:flutter/foundation.dart';
import '../models/profile_models.dart';
import '../services/profile_service.dart';

class ProfileProvider extends ChangeNotifier {
  final _service = ProfileService();

  DrinkProfileModel? _profile;
  String?            _error;
  bool               _loading = false;

  DrinkProfileModel? get profile => _profile;
  String?            get error   => _error;
  bool               get loading => _loading;

  Future<void> load() async {
    _setLoading(true);
    try {
      _profile = await _service.getMyProfile();
      _error   = null;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Profile] load error: $_error');
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> update({
    required String phone,
    required String favoriteDrinks,
    required String drinkingLevel,
    required String frequency,
    required String preferredVibe,
    required String bio,
  }) async {
    _setLoading(true);
    try {
      _profile = await _service.updateProfile(
        phone:          phone,
        favoriteDrinks: favoriteDrinks,
        drinkingLevel:  drinkingLevel,
        frequency:      frequency,
        preferredVibe:  preferredVibe,
        bio:            bio,
        avatarUrl:      _profile?.avatarUrl ?? '',
      );
      _error = null;
      return true;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Profile] update error: $_error');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> uploadPhoto(File file) async {
    _setLoading(true);
    try {
      _profile = await _service.uploadPhoto(file);
      _error   = null;
      return true;
    } catch (e) {
      _error = e.toString().replaceAll('Exception: ', '');
      debugPrint('[Profile] photo upload error: $_error');
      return false;
    } finally {
      _setLoading(false);
    }
  }

  void clearError() { _error = null; notifyListeners(); }
  void _setLoading(bool v) { _loading = v; notifyListeners(); }
}
